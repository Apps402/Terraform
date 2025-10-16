terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.41"
    }
  }

  backend "azurerm" {
    resource_group_name   = "backendrgap"
    storage_account_name  = "backendstgap9000001"
    container_name        = "apstate"
    key                   = "state.tf"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "c8d95a4f-bba8-4175-b204-f389ec30d92c"
}

resource "azurerm_resource_group" "rg01" {
  name     = "Appsrg"
  location = "West Europe"
}



