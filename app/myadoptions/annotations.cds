using UserService as service from '../../srv/user-service';

annotate service.Adoptions with @(
    UI.HeaderInfo : {
        TypeName : 'Adoption',
        TypeNamePlural : 'Adoptions',
        Title : {
            Value : status
        }
    },

    UI.FieldGroup #AdoptionInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Adoption Date',
                Value : adoptionDate
            },
            {
                $Type : 'UI.DataField',
                Label : 'Status',
                Value : status
            },
            {
                $Type : 'UI.DataField',
                Label : 'Remarks',
                Value : remarks
            }
        ]
    },

    UI.FieldGroup #ApplicationInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Application Date',
                Value : application.applicationDate
            },
            {
                $Type : 'UI.DataField',
                Label : 'Application Status',
                Value : application.status
            }
        ]
    },

    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Adoption Information',
            Target : '@UI.FieldGroup#AdoptionInfo'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Application Information',
            Target : '@UI.FieldGroup#ApplicationInfo'
        }
    ],

    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Adoption Date',
            Value : adoptionDate
        },
        {
            $Type : 'UI.DataField',
            Label : 'Status',
            Value : status
        },
        {
            $Type : 'UI.DataField',
            Label : 'Remarks',
            Value : remarks
        }
    ]
);