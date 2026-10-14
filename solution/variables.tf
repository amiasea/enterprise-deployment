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

variable "aca_config_job_trigger_id" {
  type = string
}

variable "data_access_group_display_name" {
  type = string
}

variable "data_access_group_object_id" {
  type = string
}

variable "migrations_group_display_name" {
  type = string
}

variable "migrations_group_object_id" {
  type = string
}