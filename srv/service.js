const cds = require("@sap/cds");

module.exports = cds.service.impl(async function () {
    this.after("READ", "RoleAuditReports", (results) => {
        if (!results) return;
        const items = Array.isArray(results) ? results : [results];
        for (const item of items) {
            if (item.status === "Success") {
                item.statusCriticality = 3; // Positive (green)
            } else if (item.status === "Failure") {
                item.statusCriticality = 1; // Negative (red)
            } else {
                item.statusCriticality = 0; // Neutral
            }
        }
    });

    this.after("READ", "ConfigurationReport", (results) => {
        if (!results) return;
        const items = Array.isArray(results) ? results : [results];
        for (const item of items) {
            if (item.userRole === "App_Dev") {
                item.roleCriticality = 2; // Critical (yellow)
            } else {
                item.roleCriticality = 0; // Neutral
            }
        }
    });
});
