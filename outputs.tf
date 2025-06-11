output "aks_name" {
  description = "Name of the AKS cluster"
  value = module.aks.name
}

output "acr_login_server" {
  description = "ACR login server"
  value = module.acr.login_server
}

output "keyvault_name" {
  description = "Key Vault name"
  value = module.keyvault.name
}

output "argocd_server_url" {
  description = "Argo CD server endpoint"
  value = "http://${module.argocd.argocd_namespace}.westeurope.cloudapp.azure.com"
}