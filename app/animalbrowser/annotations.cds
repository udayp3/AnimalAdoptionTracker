using UserService as service from '../../srv/user-service';

annotate service.Animals with @(
    Capabilities.DeleteRestrictions : {
        Deletable : false
    },
    UI.HeaderInfo : {
        TypeName : 'Animal',
        TypeNamePlural : 'Animals',
        Title : {
            Value : name
        },
        Description : {
            Value : breed
        },
        ImageUrl : photo
    },

    UI.Identification : [
    {
        $Type  : 'UI.DataFieldForAction',
        Action : 'UserService.applyForAdoption',
        Label  : 'Apply for Adoption'
    }
],

    UI.FieldGroup #BasicInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
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
                Label : 'Age',
                Value : age
            },
            {
                $Type : 'UI.DataField',
                Label : 'Gender',
                Value : gender
            }
        ]
    },

    UI.FieldGroup #AdoptionInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Adoption Status',
                Value : adoptionStatus
            },
            {
                $Type : 'UI.DataField',
                Label : 'Shelter',
                Value : shelter.shelterName
            }
        ]
    },

    UI.FieldGroup #DescriptionInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Description',
                Value : description
            }
        ]
    },

    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'BasicInfoFacet',
            Label : 'Basic Information',
            Target : '@UI.FieldGroup#BasicInfo'
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'AdoptionFacet',
            Label : 'Adoption Information',
            Target : '@UI.FieldGroup#AdoptionInfo'
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'DescriptionFacet',
            Label : 'Description',
            Target : '@UI.FieldGroup#DescriptionInfo'
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
            Label : 'Age',
            Value : age
        },
        {
            $Type : 'UI.DataField',
            Label : 'Status',
            Value : adoptionStatus
        }
    ],

    UI.SelectionFields : [
        species,
        breed,
        adoptionStatus
    ]
);
