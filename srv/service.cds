using { audit as my } from '../db/schema.cds';

service auditLoggingAndReportingService
{
    entity UserAuditReports as projection on my.UserAuditReport;

    entity RoleAuditReports as projection on my.RoleAuditReport;
}
