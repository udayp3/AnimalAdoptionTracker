namespace animalTracker.common;

aspect Managed {

    createdAt  : Timestamp;
    createdBy  : String(255);

    modifiedAt : Timestamp;
    modifiedBy : String(255);
}