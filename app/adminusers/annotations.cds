using AdminService as service from '../../srv/admin-service';

annotate service.Users with @(
    UI.HeaderInfo : {
        TypeName : 'User',
        TypeNamePlural : 'Users',
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
            {
                $Type : 'UI.DataField',
                Label : 'First Name',
                Value : firstName
            },
            {
                $Type : 'UI.DataField',
                Label : 'Last Name',
                Value : lastName
            },
            {
                $Type : 'UI.DataField',
                Label : 'Email',
                Value : email
            },
            {
                $Type : 'UI.DataField',
                Label : 'Phone',
                Value : phone
            }
        ]
    },

    UI.FieldGroup #AddressInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Address',
                Value : address
            },
            {
                $Type : 'UI.DataField',
                Label : 'City',
                Value : city
            },
            {
                $Type : 'UI.DataField',
                Label : 'State',
                Value : state
            },
            {
                $Type : 'UI.DataField',
                Label : 'Postal Code',
                Value : postalCode
            }
        ]
    },

    UI.FieldGroup #AccountInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Role',
                Value : role
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
            ID : 'PersonalFacet',
            Label : 'Personal Information',
            Target : '@UI.FieldGroup#PersonalInfo'
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'AddressFacet',
            Label : 'Address Information',
            Target : '@UI.FieldGroup#AddressInfo'
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'AccountFacet',
            Label : 'Account Information',
            Target : '@UI.FieldGroup#AccountInfo'
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
            Label : 'First Name',
            Value : firstName
        },
        {
            $Type : 'UI.DataField',
            Label : 'Last Name',
            Value : lastName
        },
        {
            $Type : 'UI.DataField',
            Label : 'Email',
            Value : email
        },
        {
            $Type : 'UI.DataField',
            Label : 'Phone',
            Value : phone
        },
        {
            $Type : 'UI.DataField',
            Label : 'Role',
            Value : role
        }
    ],

    UI.SelectionFields : [
        firstName,
        lastName,
        email,
        role
    ]
);