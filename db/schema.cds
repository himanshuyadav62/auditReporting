namespace audit;

entity UserAuditReport {
    key ID             : UUID;
    timestamp          : String(30);       // Timestamp (UTC)
    eventType          : String(50);       // Event Type
    event              : String(100);      // Event
    userId             : String(100);      // User ID
    userName           : String(100);      // User Name
    userType           : String(50);       // User Type
    roleCollection     : String(100);      // Role Collection
    fieldChanged       : String(100);      // Field Changed
    oldValue           : String(255);      // Old Value
    newValue           : String(255);      // New Value
    performedBy        : String(100);      // Performed By
    userRole           : String(100);      // User Role
    status             : String(20);       // Status
    subaccount         : String(100);      // Subaccount
}

entity RoleAuditReport {
    key ID             : UUID;
    roleCollection     : String(100);      // Role Collection
    event              : String(100);      // Event
    timestamp          : String(30);       // Timestamp (UTC)
    changedByUserId    : String(100);      // Changed By (User ID)
    userRole           : String(100);      // User Role
    fieldChanged       : String(100);      // Field
    oldValue           : String(255);      // Old Value
    newValue           : String(255);      // New Value
    status             : String(20);       // Status
    subaccountName     : String(100);      // Subaccount Name
}