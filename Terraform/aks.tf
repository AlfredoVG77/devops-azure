resource "azurerm_kubernetes_cluster" "aks" {
  name                = "aks-devops"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "aksdevops"

  default_node_pool {
    name       = "nodepool1"
    node_count = 1
    vm_size    = "Standard_B2s_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin    = "azure"
    load_balancer_sku = "standard"
  }

  tags = {
    environment = "casopractico2"
  }
}

# Permiso para que AKS pueda hacer pull desde ACR
resource "azurerm_role_assignment" "aks_acr_pull" {
  principal_id         = azurerm_kubernetes_cluster.aks.kubelet_identity[0].object_id
  role_definition_name = "AcrPull"
  scope                = azurerm_container_registry.acr.id
}