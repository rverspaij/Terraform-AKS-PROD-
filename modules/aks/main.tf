resource "azurerm_kubernetes_cluster" "this" {
  name = var.name
  location = var.location
  resource_group_name = var.resource_group_name
  dns_prefix = var.dns_prefix

  default_node_pool {
    name = var.default_node_pool.name
    node_count = var.default_node_pool.node_count
    vm_size = var.default_node_pool.vm_size
    vnet_subnet_id = var.subnet_id
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin = "azure"
    dns_service_ip = var.dns_service_ip
    service_cidr = var.service_cidr
  }

  oidc_issuer_enabled = true
  
  azure_active_directory_role_based_access_control {
    tenant_id               = var.tenant_id
    admin_group_object_ids  = var.admin_group_object_ids
  }
  
  tags = var.tags
}