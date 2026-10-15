# data "azurerm_container_app_job" "enterprise_sql_config_job" {
#   name                = var.aca_enterprise_sql_config_job_name
#   resource_group_name = var.resource_group_name
# }

# resource "azapi_resource_action" "start" {
#   type        = "Microsoft.App/jobs@2026-01-01"
#   resource_id = "constructed tbd"
#   action      = "start"
#   method      = "POST"

#   body = {
#     containers = [
#       {
#         name = var.container_name
#         args = [
#           "/opt/amiasea/scripts/establish-sql-principals.ps1",
#           "-ServerInstance", var.azurerm_mssql_server_name,
#           "-Database", azapi_resource.amiasea_database.name,
#           "-MigrationGroup", var.migrations_group_display_name,
#           "-MigrationObjectId", data.azuread_group.enterprise_sql_migrations.object_id,
#           "-DataAccessGroup", var.data_access_group_display_name,
#           "-DataAccessObjectId", data.azuread_group.enterprise_sql_data_access.object_id
#         ]
#       }
#     ]
#   }

#   response_export_values = ["*"]
# }