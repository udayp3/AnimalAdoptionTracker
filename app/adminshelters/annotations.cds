using AdminService as service from '../../srv/admin-service';

annotate service.Shelters with @(
    UI.HeaderInfo : {
        TypeName : 'Shelter',
        TypeNamePlural : 'Shelters',
        Title : {
            Value : shelterName
        }
    },

    UI.FieldGroup #ShelterInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Shelter Name',
                Value : shelterName
            },
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

    UI.FieldGroup #ContactInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Contact Person',
                Value : contactPerson
            },
            {
                $Type : 'UI.DataField',
                Label : 'Phone',
                Value : phone
            },
            {
                $Type : 'UI.DataField',
                Label : 'Email',
                Value : email
            }
        ]
    },

    UI.FieldGroup #CapacityInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Capacity',
                Value : capacity
            },
            {
                $Type : 'UI.DataField',
                Label : 'Current Occupancy',
                Value : currentOccupancy
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
            ID : 'ShelterFacet',
            Label : 'Shelter Information',
            Target : '@UI.FieldGroup#ShelterInfo'
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'ContactFacet',
            Label : 'Contact Information',
            Target : '@UI.FieldGroup#ContactInfo'
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'CapacityFacet',
            Label : 'Capacity Information',
            Target : '@UI.FieldGroup#CapacityInfo'
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
            Label : 'Shelter Name',
            Value : shelterName
        },
        {
            $Type : 'UI.DataField',
            Label : 'City',
            Value : city
        },
        {
            $Type : 'UI.DataField',
            Label : 'Contact Person',
            Value : contactPerson
        },
        {
            $Type : 'UI.DataField',
            Label : 'Capacity',
            Value : capacity
        },
        {
            $Type : 'UI.DataField',
            Label : 'Current Occupancy',
            Value : currentOccupancy
        }
    ],

    UI.SelectionFields : [
        shelterName,
        city,
        contactPerson
    ]
);