terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.41"
    }
  }

  backend "azurerm" {
    resource_group_name   = "backendrgap"
    storage_account_name  = "backendstgap19"
    container_name        = "apstate"
    key                   = "state.tf"
  }
}

provider "azurerm" {
  features {}
  
}

resource "azurerm_resource_group" "rg01" {
  name     = "Appsrg"
  location = "West Europe"
}



