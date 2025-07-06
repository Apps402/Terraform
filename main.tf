resource "azurerm_resource_group" "rg01" {
    name = "Appsrg"
    location = "West Europe"
  
}

resource "azurerm_resource_group" "td100" {
    name = "td100"
    location = "Central India"
  
}