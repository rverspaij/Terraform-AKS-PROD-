variable "location" {
  description = "Azure region"
  type = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type = string
}

variable "tags" {
  description = "Tags for all resources"
  type = map(string)
  default = {}
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type = string
}

variable "vnet_address_space" {
  description = "Address space of the virtual network"
  type = list(string)
}

variable "subnets" {
  description = "List of subnets"
  type = list(object({
    name = string
    address_prefix = string
  }))
}

variable "aks_name" {
  description = "Name of the AKS cluster"
  type = string
}

variable "aks_dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type = string
}

variable "default_node_pool" {
  description = "Default node pool settings"
  type = object({
    name = string
    node_count = number
    vm_size = string
  })
}

variable "admin_group_object_ids" {
  description = "List of Azure AD group objects IDs with AKS admin access"
  type = list(string)
}

variable "tenant_id" {
  description = "Azure AD tenant ID"
  type = string
}

variable "dns_service_ip" {
  description = "DNS service IP for AKS"
  type = string
}

variable "service_cidr" {
  description = "Service CIDR for AKS"
  type = string
}

variable "acr_name" {
  description = "ACR name"
  type = string
}

variable "acr_sku" {
  description = "ACR SKU (Basic, Standard, Premium)"
  type = string
  default = "Basic"
}

variable "keyvault_name" {
  description = "Name of the Azure Key Vault"
  type = string
}