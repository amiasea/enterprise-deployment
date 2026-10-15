required_providers {
  azurerm = {
    source  = "hashicorp/azurerm"
    version = "~> 5.9"
  }

  azuread = {
    source  = "hashicorp/azuread"
    version = "~> 3.10"
  }

  azapi = {
    source  = "Azure/azapi"
    version = "~> 2.13"
  }

  # mssql = {
  #   source = "muecahit94/mssql"
  #   version = "~> 1.8.2"
  # }
}

provider "azurerm" "this" {
  config {
    tenant_id       = var.azure_tenant_id
    client_id       = var.azure_client_id
    subscription_id = var.azure_subscription_id

    oidc_token = var.azure_identity_token

    use_oidc = true

    features {}
  }
}

provider "azuread" "this" {
  config {
    tenant_id = var.azure_tenant_id
    client_id = var.azure_client_id

    oidc_token = var.azure_identity_token

    use_oidc = true
  }
}

provider "azapi" "this" {
  config {
    tenant_id       = var.azure_tenant_id
    client_id       = var.azure_client_id
    subscription_id = var.azure_subscription_id

    oidc_token = var.azure_identity_token

    use_oidc = true
  }
}

# provider "mssql" "this" {
#   hostname = "${var.azurerm_mssql_server_name}.database.windows.net"

#   azure_auth {}
# }