component "solution" {
  source = "./solution"

  inputs = {
    azurerm_mssql_server_name = var.azurerm_mssql_server_name
    resource_group_name = var.resource_group_name
    aca_enterprise_sql_config_job_name = var.aca_enterprise_sql_config_job_name
    data_access_group_display_name = var.data_access_group_display_name
    migrations_group_display_name = var.migrations_group_display_name
    container_name = var.container_name
  }

  providers = {
    azurerm = provider.azurerm.this
    azapi   = provider.azapi.this
    azuread = provider.azuread.this
    # mssql  = provider.mssql.this
  }
}