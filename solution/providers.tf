terraform {
  required_version = ">= 1.16.2"

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
  }
}