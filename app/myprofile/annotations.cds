using UserService as service from '../../srv/user-service';

annotate service.Users with @(
    
    UI.CreateHidden : true,
    UI.HeaderInfo : {
        TypeName : 'Profile',
        TypeNamePlural : 'Profiles',
        Title : {
            Value : firstName
        },
        Description : {
            Value : email
        }
    },

    UI.FieldGroup #PersonalInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            { $Type : 'UI.DataField', Label : 'First Name', Value : firstName },
            { $Type : 'UI.DataField', Label : 'Last Name', Value : lastName },
            { $Type : 'UI.DataField', Label : 'Email', Value : email },
            { $Type : 'UI.DataField', Label : 'Phone', Value : phone }
        ]
    },

    UI.FieldGroup #AddressInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            { $Type : 'UI.DataField', Label : 'Address', Value : address },
            { $Type : 'UI.DataField', Label : 'City', Value : city },
            { $Type : 'UI.DataField', Label : 'State', Value : state },
            { $Type : 'UI.DataField', Label : 'Postal Code', Value : postalCode }
        ]
    },

    UI.Facets : [
        {
            $Type  : 'UI.ReferenceFacet',
            ID     : 'PersonalInfoFacet',
            Label  : 'Personal Information',
            Target : '@UI.FieldGroup#PersonalInfo'
        },
        {
            $Type  : 'UI.ReferenceFacet',
            ID     : 'AddressInfoFacet',
            Label  : 'Address Information',
            Target : '@UI.FieldGroup#AddressInfo'
        }
    ],

    UI.LineItem : [
        { $Type : 'UI.DataField', Label : 'First Name', Value : firstName },
        { $Type : 'UI.DataField', Label : 'Last Name', Value : lastName },
        { $Type : 'UI.DataField', Label : 'Email', Value : email },
        { $Type : 'UI.DataField', Label : 'Phone', Value : phone }
    ]
);