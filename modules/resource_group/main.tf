resource "azurerm_resource_group" "rg01" {
    name = var.rg_name
    location = var.rg_loc
    tags = var.rg_tags
}
