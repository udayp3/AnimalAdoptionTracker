using { animalTracker.db as db } from '../db/schema';

//@requires: 'Admin'
service AdminService {

    @odata.draft.enabled
    entity Animals as projection on db.Animals;

    @odata.draft.enabled
    entity AdoptionApplications
        as projection on db.AdoptionApplications
        actions {

            action approve();

            action rejectApplication(reason : String);

        };

    @odata.draft.enabled
    entity Adoptions as projection on db.Adoptions;

    @odata.draft.enabled
    entity Inspections as projection on db.Inspections;

    @odata.draft.enabled
    entity Users as projection on db.Users;

    @odata.draft.enabled
    entity Shelters as projection on db.Shelters;

    @odata.draft.enabled
    entity HealthRecords as projection on db.HealthRecords;

    
}