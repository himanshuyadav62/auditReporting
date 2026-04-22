using auditLoggingAndReportingService as service from '../../srv/service';
annotate service.ConfigurationReport with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'userId',
                Value : userId,
            },
            {
                $Type : 'UI.DataField',
                Label : 'userRole',
                Value : userRole,
            },
            {
                $Type : 'UI.DataField',
                Label : 'eventType',
                Value : eventType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'btpService',
                Value : btpService,
            },
            {
                $Type : 'UI.DataField',
                Label : 'subAccount',
                Value : subAccount,
            },
            {
                $Type : 'UI.DataField',
                Label : 'region',
                Value : region,
            },
            {
                $Type : 'UI.DataField',
                Label : 'actionPerformed',
                Value : actionPerformed,
            },
            {
                $Type : 'UI.DataField',
                Label : 'timestampUTC',
                Value : timestampUTC,
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
            Label : 'userId',
            Value : userId,
        },
        {
            $Type : 'UI.DataField',
            Label : 'userRole',
            Value : userRole,
        },
        {
            $Type : 'UI.DataField',
            Label : 'eventType',
            Value : eventType,
        },
        {
            $Type : 'UI.DataField',
            Label : 'btpService',
            Value : btpService,
        },
        {
            $Type : 'UI.DataField',
            Label : 'subAccount',
            Value : subAccount,
        },
    ],
);

