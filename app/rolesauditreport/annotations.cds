using auditLoggingAndReportingService as service from '../../srv/service';
annotate service.RoleAuditReports with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'roleCollection',
                Value : roleCollection,
            },
            {
                $Type : 'UI.DataField',
                Label : 'event',
                Value : event,
            },
            {
                $Type : 'UI.DataField',
                Label : 'timestamp',
                Value : timestamp,
            },
            {
                $Type : 'UI.DataField',
                Label : 'changedByUserId',
                Value : changedByUserId,
            },
            {
                $Type : 'UI.DataField',
                Label : 'userRole',
                Value : userRole,
            },
            {
                $Type : 'UI.DataField',
                Label : 'fieldChanged',
                Value : fieldChanged,
            },
            {
                $Type : 'UI.DataField',
                Label : 'oldValue',
                Value : oldValue,
            },
            {
                $Type : 'UI.DataField',
                Label : 'newValue',
                Value : newValue,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status',
                Value : status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'subaccountName',
                Value : subaccountName,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'roleCollection',
            Value : roleCollection,
        },
        {
            $Type : 'UI.DataField',
            Label : 'event',
            Value : event,
        },
        {
            $Type : 'UI.DataField',
            Label : 'timestamp',
            Value : timestamp,
        },
        {
            $Type : 'UI.DataField',
            Label : 'changedByUserId',
            Value : changedByUserId,
        },
        {
            $Type : 'UI.DataField',
            Label : 'userRole',
            Value : userRole,
        },
    ],
);

