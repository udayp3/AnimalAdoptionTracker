using { animalTracker.common.Managed } from './common';



namespace animalTracker.db;



entity Users : Managed {
    key ID            : UUID;
    firstName         : String(100);
    lastName          : String(100);
    email             : String(255);
    phoneNumber       : String(20);
    address           : String(255);
    city              : String(100);
    state             : String(100);
    postalCode        : String(20);
    role              : String(30);
    status            : String(20);



    applications      : Association to many AdoptionApplications
                        on applications.applicant = $self;
}



entity Shelters : Managed {
    key ID            : UUID;
    shelterName       : String(100);
    shelterCode       : String(20);
    description       : String(500);
    addressLine1      : String(150);
    addressLine2      : String(150);
    city              : String(50);
    state             : String(50);
    postalCode        : String(20);
    country           : String(50);
    contactPerson     : String(100);
    contactNumber     : String(20);
    alternateNumber   : String(20);
    email             : String(100);
    website           : String(200);
    capacity          : Integer;
    currentOccupancy  : Integer;
    openingTime       : Time;
    closingTime       : Time;
    licenseNumber     : String(50);
    shelterType       : String(50);
    status            : String(20);



    animals           : Association to many Animals
                        on animals.shelter = $self;
}



entity Animals : Managed {
    key ID            : UUID;
    name              : String(100);
    species           : String(50);
    breed             : String(100);
    gender            : String(20);
    age               : Integer;
    color             : String(50);
    arrivalDate       : Date;
    healthStatus      : String(100);
    vaccinationStatus : String(100);
    adoptionStatus    : String(30);
    adoptionFee       : Decimal(10,2);
    imageType         : String;
    @Core.MediaType : imageType
    photo             : LargeBinary;
    description       : String(500);

    shelter           : Association to one Shelters;

    applications      : Association to many AdoptionApplications
                        on applications.animal = $self;

    healthRecords     : Association to many HealthRecords
                        on healthRecords.animal = $self;
}



entity AdoptionApplications : Managed {
    key ID                : UUID;
    applicationDate       : Date;
    reasonForAdoption     : String(500);
    housingDetails        : String(500);
    petExperience         : String(500);
    status                : String(30);
    rejectionReason       : String(500);
    staffRemarks          : String(500);
    reviewedBy            : UUID;
    reviewedDate          : Date;



    applicant             : Association to Users;
    animal                : Association to Animals;



    adoption              : Association to one Adoptions
                            on adoption.application = $self;
}



entity Adoptions : Managed {
    key ID                : UUID;
    adoptionDate          : Date;
    status                : String(20);
    adoptionDocument      : LargeBinary;
    remarks               : String(500);
    completedBy           : UUID;



    application           : Association to AdoptionApplications;



    inspections           : Association to many Inspections
                            on inspections.adoption = $self;
}



entity Inspections : Managed {
    key ID                : UUID;
    inspectorID           : UUID;
    inspectionDate        : Date;
    inspectionType        : String(30);
    existingPetsDetails   : String(500);
    result                : String(20);
    remarks               : String(500);
    inspectionDocument    : LargeBinary;



    adoption              : Association to Adoptions;
}



entity HealthRecords : Managed {
    key ID                : UUID;
    checkupDate           : Date;
    healthStatus          : String(30);
    diagnosis             : String(500);
    treatment             : String(500);
    medication            : String(500);
    veterinarianName      : String(100);
    weight                : Decimal(5,2);
    nextCheckupDate       : Date;
    remarks               : String(500);
    @Core.MediaType       : documentType
    medicalDocument       : LargeBinary;
    documentType          : String(100);
    adoptionEligible      : Boolean;


    animal                : Association to Animals;
}
