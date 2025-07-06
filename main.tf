resource "azurerm_resource_group" "rg01" {
    name = "Appsrg"
    location = "West Europe"
  
}

resource "azurerm_virtual_network" "vnet" {
    name = "vnet"
    location = "West Europe"
    resource_group_name = "Appsrg"
}