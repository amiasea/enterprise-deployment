resource "azapi_resource_action" "start" {
  type        = "Microsoft.App/jobs@2026-01-01"
  resource_id = var.aca_config_job_trigger_id
  action      = "start"
  method      = "POST"

  body = {
    containers = [
      {
        name = var.container_name
        args = [
          "/opt/amiasea/scripts/establish-sql-principals.ps1",
          "-ServerInstance", var.azurerm_mssql_server_name,
          "-Database", azapi_resource.amiasea_database.name,
          "-MigrationGroup", var.migrations_group_display_name,
          "-MigrationObjectId", data.azuread_group.enterprise_sql_migrations.object_id,
          "-DataAccessGroup", var.data_access_group_display_name,
          "-DataAccessObjectId", data.azuread_group.enterprise_sql_data_access.object_id
        ]
      }
    ]
  }

  response_export_values = ["*"]
}