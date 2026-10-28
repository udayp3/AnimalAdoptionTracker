using { animalTracker.db as db } from '../db/schema';

//@requires: 'Adopter'
service UserService {

    @odata.draft.enabled
    entity Users                as projection on db.Users;

    entity Shelters             as projection on db.Shelters;
    entity Animals              as projection on db.Animals
    actions {
    action applyForAdoption(
        reasonForAdoption : String,
        housingDetails    : String,
        petExperience     : String
    ) returns String;
};
    entity AdoptionApplications as projection on db.AdoptionApplications;
    entity Adoptions            as projection on db.Adoptions;
    entity HealthRecords        as projection on db.HealthRecords;
    entity Inspections          as projection on db.Inspections;
}