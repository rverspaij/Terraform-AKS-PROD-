output "kube_config" {
  description = "Kube config block"
  value = azurerm_kubernetes_cluster.this.kube_config_raw
  sensitive = true
}

output "kube_admin_config" {
  description = "Admin kube config"
  value = azurerm_kubernetes_cluster.this.kube_admin_config_raw
  sensitive = true
}

output "name" {
  value = azurerm_kubernetes_cluster.this.name
  description = "AKS cluster name"
}

output "identity_principal_id" {
  description = "The principal ID of the system-assigned identity"
  value = azurerm_kubernetes_cluster.this.identity[0].principal_id
}

output "kube_host" {
  value     = azurerm_kubernetes_cluster.this.kube_config[0].host
}

output "kube_client_certificate" {
  value     = azurerm_kubernetes_cluster.this.kube_config[0].client_certificate
  sensitive = true
}

output "kube_client_key" {
  value     = azurerm_kubernetes_cluster.this.kube_config[0].client_key
  sensitive = true
}

output "kube_cluster_ca" {
  value     = azurerm_kubernetes_cluster.this.kube_config[0].cluster_ca_certificate
  sensitive = true
}
