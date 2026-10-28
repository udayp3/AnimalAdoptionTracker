const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {

    const {
        AdoptionApplications,
        Adoptions,
        Animals
    } = this.entities;

    this.on('approve', AdoptionApplications, async req => {

        const applicationId = req.params[0].ID;

        const application = await SELECT.one
            .from(AdoptionApplications)
            .where({ ID: applicationId });

        if (!application) {
            return req.reject(404, 'Application not found');
        }

        await UPDATE(AdoptionApplications)
            .set({
                status: 'Approved',
                reviewedDate: new Date()
            })
            .where({ ID: applicationId });

        await INSERT.into(Adoptions).entries({
            ID: cds.utils.uuid(),
            application_ID: applicationId,
            adoptionDate: new Date(),
            status: 'Completed',
            remarks: 'Approved'
        });

        await UPDATE(Animals)
            .set({
                adoptionStatus: 'Adopted'
            })
            .where({
                ID: application.animal_ID
            });

        return 'Application Approved';
    });

    this.on('reject', AdoptionApplications, async req => {

        const applicationId = req.params[0].ID;

        await UPDATE(AdoptionApplications)
            .set({
                status: 'Rejected',
                reviewedDate: new Date()
            })
            .where({
                ID: applicationId
            });

        return 'Application Rejected';
    });

});