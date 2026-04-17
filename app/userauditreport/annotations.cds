using auditLoggingAndReportingService as service from '../../srv/service';
annotate service.UserAuditReports with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'timestamp',
                Value : timestamp,
            },
            {
                $Type : 'UI.DataField',
                Label : 'eventType',
                Value : eventType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'event',
                Value : event,
            },
            {
                $Type : 'UI.DataField',
                Label : 'userId',
                Value : userId,
            },
            {
                $Type : 'UI.DataField',
                Label : 'userName',
                Value : userName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'userType',
                Value : userType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'roleCollection',
                Value : roleCollection,
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
                Label : 'performedBy',
                Value : performedBy,
            },
            {
                $Type : 'UI.DataField',
                Label : 'userRole',
                Value : userRole,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status',
                Value : status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'subaccount',
                Value : subaccount,
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
            Label : 'timestamp',
            Value : timestamp,
        },
        {
            $Type : 'UI.DataField',
            Label : 'eventType',
            Value : eventType,
        },
        {
            $Type : 'UI.DataField',
            Label : 'event',
            Value : event,
        },
        {
            $Type : 'UI.DataField',
            Label : 'userId',
            Value : userId,
        },
        {
            $Type : 'UI.DataField',
            Label : 'userName',
            Value : userName,
        },
    ],
);

