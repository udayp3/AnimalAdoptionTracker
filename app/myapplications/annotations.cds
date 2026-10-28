using UserService as service from '../../srv/user-service';

annotate service.AdoptionApplications with @(
    Capabilities.DeleteRestrictions : {
        Deletable : false
    },

    UI.HeaderInfo : {
        TypeName : 'Application',
        TypeNamePlural : 'Applications',
        Title : {
            Value : status
        }
    },

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
            }
        ]
    },

    UI.FieldGroup #ApplicantInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
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

    UI.FieldGroup #ReviewInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Rejection Reason',
                Value : rejectionReason
            },
            {
                $Type : 'UI.DataField',
                Label : 'Staff Remarks',
                Value : staffRemarks
            },
            {
                $Type : 'UI.DataField',
                Label : 'Reviewed Date',
                Value : reviewedDate
            }
        ]
    },

    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Application Information',
            Target : '@UI.FieldGroup#ApplicationInfo'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Applicant Information',
            Target : '@UI.FieldGroup#ApplicantInfo'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Review Information',
            Target : '@UI.FieldGroup#ReviewInfo'
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
            Label : 'Application Date',
            Value : applicationDate
        },
        {
            $Type : 'UI.DataField',
            Label : 'Status',
            Value : status
        }
    ],

    UI.SelectionFields : [
        status,
        applicationDate
    ]
);