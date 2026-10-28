const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {

    const {
        Animals,
        Users,
        AdoptionApplications,
        Adoptions
    } = this.entities;

    const DEMO_USER_ID =
        '11111111-1111-1111-1111-111111111111';

    /**
     * Animal Browser
     */
    this.before('READ', Animals, req => {
        req.query.where({
            adoptionStatus: 'Available'
        });
    });

    /**
     * My Profile
     */
    this.before('READ', Users, req => {

        req.query.where({
            ID: DEMO_USER_ID
        });

    });

    /**
     * My Applications
     */
    this.before('READ', AdoptionApplications, req => {

        req.query.where({
            applicant_ID: DEMO_USER_ID
        });

    });

    /**
     * My Adoptions
     */
    this.before('READ', Adoptions, async req => {

        const applications = await SELECT
            .from(AdoptionApplications)
            .columns('ID')
            .where({
                applicant_ID: DEMO_USER_ID
            });

        const applicationIds =
            applications.map(a => a.ID);

        if (!applicationIds.length) {

            req.query.where({
                ID:
                    '00000000-0000-0000-0000-000000000000'
            });

            return;
        }

        req.query.where({
            application_ID: {
                in: applicationIds
            }
        });

    });

    /**
     * Apply For Adoption
     */
    this.on('applyForAdoption', Animals, async req => {

        const animalId =
            req.params?.[0]?.ID ||
            req.data?.ID;

        if (!animalId) {
            return req.reject(
                400,
                'Animal ID not received'
            );
        }

        const animal =
            await SELECT.one
                .from(Animals)
                .where({
                    ID: animalId
                });

        if (!animal) {
            return req.reject(
                404,
                'Animal not found'
            );
        }

        if (
            animal.adoptionStatus !== 'Available'
        ) {
            return req.reject(
                400,
                'Animal is not available for adoption'
            );
        }

        const existingApplication =
            await SELECT.one
                .from(AdoptionApplications)
                .where({
                    applicant_ID: DEMO_USER_ID,
                    animal_ID: animalId
                });

        if (existingApplication) {
            return req.reject(
                400,
                'You have already applied for this animal'
            );
        }

        await INSERT.into(
            AdoptionApplications
        ).entries({
            ID: cds.utils.uuid(),
            applicationDate: new Date(),
            reasonForAdoption:
                req.data.reasonForAdoption || '',
            housingDetails:
                req.data.housingDetails || '',
            petExperience:
                req.data.petExperience || '',
            status: 'Submitted',
            applicant_ID: DEMO_USER_ID,
            animal_ID: animalId
        });

        return {
            message:
                'Application submitted successfully'
        };

    });

});