using AdminService as service from '../../srv/admin-service';

annotate service.AdoptionApplications with @(
    Capabilities.InsertRestrictions : {
        Insertable : false
    },
    UI.HeaderInfo : {
        TypeName : 'Adoption Application',
        TypeNamePlural : 'Adoption Applications',
        Title : {
            Value : applicationDate
        }
    },
    UI.Identification : [

        {
            $Type : 'UI.DataFieldForAction',
            Label : 'Approve',
            Action : 'AdminService.approve'
        },
        {
            $Type : 'UI.DataFieldForAction',
            Label : 'Reject',
            Action : 'AdminService.rejectApplication'
        }

    ],
    UI.FieldGroup #ApplicationInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Application Date',
                Value : applicationDate
            },
            {
                $Type : 'UI.DataField',
                Label : 'Status',
                Value : status
            },
            {
                $Type : 'UI.DataField',
                Label : 'Reason For Adoption',
                Value : reasonForAdoption
            },
            {
                $Type : 'UI.DataField',
                Label : 'Housing Details',
                Value : housingDetails
            },
            {
                $Type : 'UI.DataField',
                Label : 'Pet Experience',
                Value : petExperience
            }
        ]
    },

    UI.FieldGroup #ApplicantInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Applicant',
                Value : applicant.firstName
            }
        ]
    },

    UI.FieldGroup #AnimalInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Animal',
                Value : animal.name
            }
        ]
    },

    UI.FieldGroup #ReviewInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Reviewed By',
                Value : reviewedBy
            },
            {
                $Type : 'UI.DataField',
                Label : 'Reviewed Date',
                Value : reviewedDate
            },
            {
                $Type : 'UI.DataField',
                Label : 'Staff Remarks',
                Value : staffRemarks
            },
            {
                $Type : 'UI.DataField',
                Label : 'Rejection Reason',
                Value : rejectionReason
            }
        ]
    },

    UI.FieldGroup #AuditInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Created At',
                Value : createdAt
            },
            {
                $Type : 'UI.DataField',
                Label : 'Created By',
                Value : createdBy
            },
            {
                $Type : 'UI.DataField',
                Label : 'Modified At',
                Value : modifiedAt
            },
            {
                $Type : 'UI.DataField',
                Label : 'Modified By',
                Value : modifiedBy
            }
        ]
    },

    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'ApplicationFacet',
            Label : 'Application Information',
            Target : '@UI.FieldGroup#ApplicationInfo'
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'ApplicantFacet',
            Label : 'Applicant Information',
            Target : '@UI.FieldGroup#ApplicantInfo'
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'AnimalFacet',
            Label : 'Animal Information',
            Target : '@UI.FieldGroup#AnimalInfo'
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'ReviewFacet',
            Label : 'Review Information',
            Target : '@UI.FieldGroup#ReviewInfo'
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'AuditFacet',
            Label : 'Audit Information',
            Target : '@UI.FieldGroup#AuditInfo'
        }
    ],

    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Application Date',
            Value : applicationDate
        },
        {
            $Type : 'UI.DataField',
            Label : 'Status',
            Value : status
        },
        {
            $Type : 'UI.DataField',
            Label : 'Reason',
            Value : reasonForAdoption
        },
        {
            $Type : 'UI.DataField',
            Label : 'Housing',
            Value : housingDetails
        },
        {
            $Type : 'UI.DataField',
            Label : 'Pet Experience',
            Value : petExperience
        }
    ],

    UI.SelectionFields : [
        applicationDate,
        status
    ]
);

annotate service.AdoptionApplications with {
    applicant @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Users',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : applicant_ID,
                ValueListProperty : 'ID'
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'firstName'
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'lastName'
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'email'
            }
        ]
    };

    animal @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Animals',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : animal_ID,
                ValueListProperty : 'ID'
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name'
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'species'
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'breed'
            }
        ]
    };
};

annotate service.Users with @Common.Text : firstName;
annotate service.Animals with @Common.Text : name;