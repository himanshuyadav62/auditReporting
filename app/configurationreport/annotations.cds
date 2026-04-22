using auditLoggingAndReportingService as service from '../../srv/service';

// Add labels to fields
annotate service.ConfigurationReport with {
    userId          @(Common.Label : 'User ID');
    userRole        @(Common.Label : 'User Role');
    eventType       @(Common.Label : 'Event Type');
    btpService      @(Common.Label : 'BTP Service');
    subAccount      @(Common.Label : 'Subaccount');
    region          @(Common.Label : 'Region');
    actionPerformed @(Common.Label : 'Action Performed');
    timestamp    @(Common.Label : 'Timestamp');
};

// Add value help for filter fields
annotate service.ConfigurationReport with {
    subAccount @(
        Common.ValueListWithFixedValues : true,
        Common.ValueList : {
            CollectionPath : 'ConfigSubaccountVH',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : subAccount,
                    ValueListProperty : 'subAccount'
                }
            ]
        }
    );

    userRole @(
        Common.ValueListWithFixedValues : true,
        Common.ValueList : {
            CollectionPath : 'ConfigRoleCollectionVH',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : userRole,
                    ValueListProperty : 'roleCollection'
                }
            ]
        }
    );

    eventType @(
        Common.ValueListWithFixedValues : true,
        Common.ValueList : {
            CollectionPath : 'ConfigEventVH',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : eventType,
                    ValueListProperty : 'event'
                }
            ]
        }
    );

    userId @(
        Common.ValueList : {
            CollectionPath : 'ConfigUserIdVH',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : userId,
                    ValueListProperty : 'userId'
                }
            ]
        }
    );
};

annotate service.ConfigurationReport with @(
    // Add filter fields to the selection
    UI.SelectionFields : [
        subAccount,
        userRole,
        eventType,
        userId,
        timestamp
    ],
    Capabilities.FilterRestrictions : {
        FilterExpressionRestrictions : [
            {
                Property : timestamp,
                AllowedExpressions : 'SingleRange'
            }
        ]
    },

    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : userId,
        },
        {
            $Type : 'UI.DataField',
            Value : userRole,
        },
        {
            $Type : 'UI.DataField',
            Value : eventType,
        },
        {
            $Type : 'UI.DataField',
            Value : btpService,
        },
        {
            $Type : 'UI.DataField',
            Value : subAccount,
        },
        {
            $Type : 'UI.DataField',
            Value : region,
        },
        {
            $Type : 'UI.DataField',
            Value : actionPerformed,
        },
        {
            $Type : 'UI.DataField',
            Value : timestamp,
        },
    ],
);
