resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_name
  location            = var.aks_loc
  resource_group_name = var.rg_name
  dns_prefix          = var.dns

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2s_v3"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = var.cluster_tags
}
