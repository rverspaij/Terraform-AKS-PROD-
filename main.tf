module "resource_group" {
  source = "./modules/resource_group"
  name = var.resource_group_name
  location = var.location
  tags = var.tags
}

module "vnet" {
  source = "./modules/vnet"
  vnet_name = var.vnet_name
  address_space = var.vnet_address_space
  location = var.location
  resource_group_name = module.resource_group.name
  subnets = var.subnets
  tags = var.tags
}

module "aks" {
  source = "./modules/aks"
  name = var.aks_name
  location = var.location
  resource_group_name = module.resource_group.name
  dns_prefix = var.aks_dns_prefix
  subnet_id = module.vnet.subnet_ids[0]
  default_node_pool = var.default_node_pool
  admin_group_object_ids = var.admin_group_object_ids
  tenant_id = var.tenant_id
  dns_service_ip = var.dns_service_ip
  service_cidr = var.service_cidr
  tags = var.tags
}

# module "acr" {
#   source = "./modules/acr"
#   name = var.acr_name
#   location = var.location
#   resource_group_name = module.resource_group.name
#   sku = var.acr_sku
#   admin_enabled = false
#   tags = var.tags
# }

# module "keyvault" {
#   source = "./modules/keyvault"
#   name = var.keyvault_name
#   location = var.location
#   resource_group_name = module.resource_group.name
#   tenant_id = var.tenant_id
#   tags = var.tags
# }

# resource "azurerm_role_assignment" "aks_acr_pull" {
#   scope = module.acr.id
#   role_definition_name = "AcrPull"
#   principal_id = module.aks.identity_principal_id
# }

# resource "azurerm_role_assignment" "aks_keyvault_access" {
#   scope = module.keyvault.id
#   role_definition_name = "Key Vault Secrets User"
#   principal_id = module.aks.identity_principal_id
# }