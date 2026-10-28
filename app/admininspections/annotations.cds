using AdminService as service from '../../srv/admin-service';

annotate service.Inspections with @(
    UI.HeaderInfo : {
        TypeName : 'Inspection',
        TypeNamePlural : 'Inspections',
        Title : {
            Value : inspectionDate
        }
    },

    UI.FieldGroup #InspectionInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Inspection Date',
                Value : inspectionDate
            },
            {
                $Type : 'UI.DataField',
                Label : 'Inspection Type',
                Value : inspectionType
            },
            {
                $Type : 'UI.DataField',
                Label : 'Existing Pets Details',
                Value : existingPetsDetails
            },
            {
                $Type : 'UI.DataField',
                Label : 'Result',
                Value : result
            },
            {
                $Type : 'UI.DataField',
                Label : 'Remarks',
                Value : remarks
            }
        ]
    },

    UI.FieldGroup #AdoptionInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Adoption',
                Value : adoption_ID
            }
        ]
    },

    UI.FieldGroup #InspectorInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Inspector ID',
                Value : inspectorID
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
            ID : 'InspectionFacet',
            Label : 'Inspection Information',
            Target : '@UI.FieldGroup#InspectionInfo'
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'AdoptionFacet',
            Label : 'Adoption Information',
            Target : '@UI.FieldGroup#AdoptionInfo'
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'InspectorFacet',
            Label : 'Inspector Information',
            Target : '@UI.FieldGroup#InspectorInfo'
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
            Label : 'Inspection Date',
            Value : inspectionDate
        },
        {
            $Type : 'UI.DataField',
            Label : 'Inspection Type',
            Value : inspectionType
        },
        {
            $Type : 'UI.DataField',
            Label : 'Result',
            Value : result
        },
        {
            $Type : 'UI.DataField',
            Label : 'Remarks',
            Value : remarks
        }
    ],

    UI.SelectionFields : [
        inspectionDate,
        inspectionType,
        result
    ]
);