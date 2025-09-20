terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.41"
    }
  }

  backend "azurerm" {
    resource_group_name   = "backendrgap"
    storage_account_name  = "backendstgap19000"
    container_name        = "apstate"
    key                   = "state.tf"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "3848d054-353d-4473-9229-a032df1ddadb"

  use_oidc           = true
  tenant_id          = "2ba64190-34b7-4c53-a3b5-39b48fc97ee1"
  subscription_id    = "3848d054-353d-4473-9229-a032df1ddadb"
  client_id          = "4d9e49fc-f653-4991-8be2-d9b32498793c"
  
}

resource "azurerm_resource_group" "rg01" {
  name     = "Appsrg"
  location = "West Europe"
}



