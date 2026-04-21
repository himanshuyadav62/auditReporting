using { audit as my } from '../db/schema.cds';

service auditLoggingAndReportingService
{
    entity UserAuditReports as projection on my.UserAuditReport;

    entity RoleAuditReports as projection on my.RoleAuditReport;

    @readonly
    entity UserEventTypeVH as select from my.UserAuditReport { key eventType } group by eventType;
    @readonly
    entity UserEventVH as select from my.UserAuditReport { key event } group by event;
    @readonly
    entity UserUserIdVH as select from my.UserAuditReport { key userId } group by userId;
    @readonly
    entity UserUserNameVH as select from my.UserAuditReport { key userName } group by userName;
    @readonly
    entity UserStatusVH as select from my.UserAuditReport { key status } group by status;
    @readonly
    entity UserSubaccountVH as select from my.UserAuditReport { key subaccount } group by subaccount;

    @readonly
    entity RoleCollectionVH as select from my.RoleAuditReport { key roleCollection } group by roleCollection;
    @readonly
    entity RoleEventVH as select from my.RoleAuditReport { key event } group by event;
    @readonly
    entity RoleStatusVH as select from my.RoleAuditReport { key status } group by status;
    @readonly
    entity RoleUserRoleVH as select from my.RoleAuditReport { key userRole } group by userRole;
    @readonly
    entity RoleSubaccountNameVH as select from my.RoleAuditReport { key subaccountName } group by subaccountName;
    @readonly
    entity RoleChangedByVH as select from my.RoleAuditReport { key changedByUserId } group by changedByUserId;
}
