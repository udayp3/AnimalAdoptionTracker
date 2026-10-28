using AdminService as service from '../../srv/admin-service';

annotate service.Animals with @(
    
    UI.HeaderInfo : {
        TypeName : 'Animal',
        TypeNamePlural : 'Animals',
        Title : {
            Value : name
        }
    },


    Capabilities.InsertRestrictions : { 
        Insertable : true
    },
    Capabilities.UpdateRestrictions : {
        Updatable : true
    },
    Capabilities.DeleteRestrictions : {
        Deletable : true
    },


    UI.FieldGroup #GeneralInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            { $Type : 'UI.DataField', Value : name },
            { $Type : 'UI.DataField', Value : species },
            { $Type : 'UI.DataField', Value : breed },
            { $Type : 'UI.DataField', Value : gender },
            { $Type : 'UI.DataField', Value : age },
            { $Type : 'UI.DataField', Value : color },
            { $Type : 'UI.DataField', Value : description },
            { $Type : 'UI.DataField', Label : 'Animal Image', Value : photo }
        ]
    },

    UI.FieldGroup #HealthInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            { $Type : 'UI.DataField', Value : healthStatus },
            { $Type : 'UI.DataField', Value : vaccinationStatus },
            { $Type : 'UI.DataField', Value : adoptionStatus }
        ]
    },

    UI.FieldGroup #ShelterInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            { $Type : 'UI.DataField', Value : shelter_ID }
        ]
    },

    UI.FieldGroup #AdoptionInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            { $Type : 'UI.DataField', Value : adoptionFee },
            { $Type : 'UI.DataField', Value : arrivalDate }
        ]
    },

    UI.FieldGroup #AuditInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            { $Type : 'UI.DataField', Value : createdAt },
            { $Type : 'UI.DataField', Value : createdBy },
            { $Type : 'UI.DataField', Value : modifiedAt },
            { $Type : 'UI.DataField', Value : modifiedBy }
        ]
    },

    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneralFacet',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneralInfo'
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'HealthFacet',
            Label : 'Health Information',
            Target : '@UI.FieldGroup#HealthInfo'
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'ShelterFacet',
            Label : 'Shelter Information',
            Target : '@UI.FieldGroup#ShelterInfo'
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'AdoptionFacet',
            Label : 'Adoption Information',
            Target : '@UI.FieldGroup#AdoptionInfo'
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
            Label : 'Name',
            Value : name
        },
        {
            $Type : 'UI.DataField',
            Label : 'Species',
            Value : species
        },
        {
            $Type : 'UI.DataField',
            Label : 'Breed',
            Value : breed
        },
        {
            $Type : 'UI.DataField',
            Label : 'Gender',
            Value : gender
        },
        {
            $Type : 'UI.DataField',
            Label : 'Age',
            Value : age
        },
        {
            $Type : 'UI.DataField',
            Label : 'Health Status',
            Value : healthStatus
        },
        {
            $Type : 'UI.DataField',
            Label : 'Vaccination Status',
            Value : vaccinationStatus
        },
        {
            $Type : 'UI.DataField',
            Label : 'Adoption Status',
            Value : adoptionStatus
        },
        {
            $Type : 'UI.DataField',
            Label : 'Adoption Fee',
            Value : adoptionFee
        }
    ],

    
);

annotate service.Animals with {
    shelter @Common.Text : shelter.shelterName;
    shelter @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Shelters',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : shelter_ID,
                ValueListProperty : 'ID'
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'shelterName'
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'city'
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'contactPerson'
            }
        ]
    };

};