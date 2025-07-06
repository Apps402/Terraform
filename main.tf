resource "azurerm_resource_group" "rg01" {
    name = "Appsrg"
    location = "West Europe"
  
}

resource "azurerm_resource_group" "ap100" {
    name = "apps100"
    location = "Central India"
  
}