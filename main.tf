terraform {
    required_providers{
        azurerm = {
                source = "hashicorp/azurerm"
                version = "4.42"
                }
    backend "azurerm"{
        resource_group_name = "backendrgap"
        storage_account_name = "backendstgap19"
        container_name = "apstate"
        key = "state.tf"
    }
}

provider "azurerm"{
    features{}
    subscription_id = "9f199aee-1ad7-464f-bd74-4b88ef990086"
}



resource "azurerm_resource_group" "rg01" {
    name = "Appsrg"
    location = "West Europe"
  
}


