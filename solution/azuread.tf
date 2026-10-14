data "azuread_group" "enterprise_sql_data_access" {
  display_name     = var.data_access_group_display_name
  security_enabled = true
}

data "azuread_group" "enterprise_sql_migrations" {
  display_name     = var.migrations_group_display_name
  security_enabled = true
}