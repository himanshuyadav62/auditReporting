using { audit as db } from '../db/schema.cds';

service auditLoggingAndReportingService
{
    entity UserAuditReports as projection on db.UserAuditReport;

    entity RoleAuditReports as projection on db.RoleAuditReport;

    entity ConfigurationReport as projection on db.ConfigurationReport;

    @readonly
    entity UserEventTypeVH as select from db.UserAuditReport { key eventType } group by eventType;
    @readonly
    entity UserEventVH as select from db.UserAuditReport { key event } group by event;
    @readonly
    entity UserUserIdVH as select from db.UserAuditReport { key userId } group by userId;
    @readonly
    entity UserUserNameVH as select from db.UserAuditReport { key userName } group by userName;
    @readonly
    entity UserStatusVH as select from db.UserAuditReport { key status } group by status;
    @readonly
    entity UserSubaccountVH as select from db.UserAuditReport { key subaccount } group by subaccount;

    @readonly
    entity RoleCollectionVH as select from db.RoleAuditReport { key roleCollection } group by roleCollection;
    @readonly
    entity RoleEventVH as select from db.RoleAuditReport { key event } group by event;
    @readonly
    entity RoleStatusVH as select from db.RoleAuditReport { key status } group by status;
    @readonly
    entity RoleUserRoleVH as select from db.RoleAuditReport { key userRole } group by userRole;
    @readonly
    entity RoleSubaccountNameVH as select from db.RoleAuditReport { key subaccountName } group by subaccountName;
    @readonly
    entity RoleChangedByVH as select from db.RoleAuditReport { key changedByUserId } group by changedByUserId;

    @readonly
    entity ConfigSubaccountVH as select from db.ConfigurationReport { key subAccount } group by subAccount;
    @readonly
    entity ConfigRoleCollectionVH as select from db.ConfigurationReport { key userRole as roleCollection } group by userRole;
    @readonly
    entity ConfigEventVH as select from db.ConfigurationReport { key eventType as event } group by eventType;
    @readonly
    entity ConfigUserIdVH as select from db.ConfigurationReport { key userId } group by userId;
}
