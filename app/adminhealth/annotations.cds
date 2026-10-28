using AdminService as service from '../../srv/admin-service';

annotate service.HealthRecords with @(
    Capabilities.InsertRestrictions : {
        Insertable : false
    },
    UI.HeaderInfo : {
        TypeName : 'Health Record',
        TypeNamePlural : 'Health Records',
        Title : {
            Value : healthStatus
        }
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

    UI.FieldGroup #HealthInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Checkup Date',
                Value : checkupDate
            },
            {
                $Type : 'UI.DataField',
                Label : 'Health Status',
                Value : healthStatus
            },
            {
                $Type : 'UI.DataField',
                Label : 'Diagnosis',
                Value : diagnosis
            },
            {
                $Type : 'UI.DataField',
                Label : 'Treatment',
                Value : treatment
            },
            {
                $Type : 'UI.DataField',
                Label : 'Vaccination Details',
                Value : vaccinationDetails
            }
        ]
    },

    UI.FieldGroup #FollowupInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Next Checkup Date',
                Value : nextCheckupDate
            },
            {
                $Type : 'UI.DataField',
                Label : 'Veterinarian',
                Value : veterinarian
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
            },
            {
                $Type : 'UI.DataField',
                Label : 'Medical Document',
                Value : medicalDocument
            }
        ]
    },

    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'AnimalFacet',
            Label : 'Animal Information',
            Target : '@UI.FieldGroup#AnimalInfo'
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'HealthFacet',
            Label : 'Health Information',
            Target : '@UI.FieldGroup#HealthInfo'
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'FollowupFacet',
            Label : 'Follow-up Information',
            Target : '@UI.FieldGroup#FollowupInfo'
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
            Label : 'Animal',
            Value : animal.name
        },
        {
            $Type : 'UI.DataField',
            Label : 'Checkup Date',
            Value : checkupDate
        },
        {
            $Type : 'UI.DataField',
            Label : 'Health Status',
            Value : healthStatus
        },
        {
            $Type : 'UI.DataField',
            Label : 'Veterinarian',
            Value : veterinarian
        },
        {
            $Type : 'UI.DataField',
            Label : 'Next Checkup Date',
            Value : nextCheckupDate
        }
    ],

    UI.SelectionFields : [
        checkupDate,
        healthStatus,
        veterinarian
    ]
);

annotate service.HealthRecords with {
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