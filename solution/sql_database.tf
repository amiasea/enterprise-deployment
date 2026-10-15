data "azurerm_mssql_server" "sql_server" {
  name = var.azurerm_mssql_server_name
  resource_group_name = var.resource_group_name
}

resource "azapi_resource" "amiasea_database" {
  type      = "Microsoft.Sql/servers/databases@2025-02-01-preview"
  name      = "amiasea_enterprise"
  parent_id = data.azurerm_mssql_server.sql_server.id
  location  = var.location

  response_export_values = ["name"]

  body = {
    sku = {
      name     = "GP_S_Gen5_2"
      tier     = "GeneralPurpose"
      family   = "Gen5"
      capacity = 2
    }

    properties = {
      collation                   = "SQL_Latin1_General_CP1_CI_AS"
      maxSizeBytes                = 34359738368
      minCapacity                 = 0.5
      autoPauseDelay              = 60
      requestedBackupStorageRedundancy = "Local"

      useFreeLimit                = true
      freeLimitExhaustionBehavior = "AutoPause"
    }
  }
}

# resource "mssql_azuread_user" "enterprise_sql_migrations" {
#   database_name = azapi_resource.amiasea_database.name
#   name          = var.migrations_group_display_name
#   object_id     = data.azuread_group.enterprise_sql_migrations.object_id

#   roles = [
#     "db_ddladmin",
#     "db_datareader",
#     "db_datawriter"
#   ]
# }

# resource "mssql_azuread_user" "enterprise_sql_data_access" {
#   database_name = azapi_resource.amiasea_database.name
#   name          = var.data_access_group_display_name
#   object_id     = data.azuread_group.enterprise_sql_data_access.object_id

#   roles = [
#     "db_datawriter",
#     "db_datareader"
#   ]
# }