output "aks_name" {
  description = "Name of the AKS cluster"
  value = module.aks.name
}

output "acr_login_server" {
  description = "ACR login server"
  value = module.acr.login_server
}

# output "keyvault_name" {
#   description = "Key Vault name"
#   value = module.keyvault.name
# }