using AdminService as service from '../../srv/admin-service';

annotate service.Adoptions with @(
    Capabilities.InsertRestrictions : {
        Insertable : false
    },
    UI.HeaderInfo : {
        TypeName : 'Adoption',
        TypeNamePlural : 'Adoptions',
        Title : {
            Value : adoptionDate
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
                Label : 'Application',
                Value : application_ID
            }
        ]
    },

    UI.FieldGroup #CompletionInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Completed By',
                Value : completedBy
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
            ID : 'AdoptionFacet',
            Label : 'Adoption Information',
            Target : '@UI.FieldGroup#AdoptionInfo'
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'ApplicationFacet',
            Label : 'Application Information',
            Target : '@UI.FieldGroup#ApplicationInfo'
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'CompletionFacet',
            Label : 'Completion Information',
            Target : '@UI.FieldGroup#CompletionInfo'
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
    ],

    UI.SelectionFields : [
        adoptionDate,
        status
    ]
);