resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = var.rg_name
  location            = var.acr_loc
  sku                 = var.acr_sku
  admin_enabled       = false
  tags = var.acr_tags
}