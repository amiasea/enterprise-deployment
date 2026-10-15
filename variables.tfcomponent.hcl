variable "azurerm_mssql_server_name" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
  default = "centralus"
}

variable "aca_enterprise_sql_config_job_name" {
  type = string
}

variable "data_access_group_display_name" {
  type = string
}

variable "migrations_group_display_name" {
  type = string
}

variable "container_name" {
  type = string
}

variable "azure_tenant_id" {
  type = string
  description = "Azure tenant ID."
}

variable "azure_subscription_id" {
  type        = string
  description = "Azure subscription ID."
}

variable "azure_client_id" {
  type        = string
  description = "Azure client ID."
}

variable "azure_identity_token" {
  type        = string
  description = "OIDC identity token used to authenticate to Azure."
  ephemeral   = true
}