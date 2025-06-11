variable "name" {
  description = "AKS cluster name"
  type = string
}

variable "location" {
  description = "Azure location"
  type = string
}

variable "resource_group_name" {
  description = "Resource group for the AKS cluster"
  type = string
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type = string
}

variable "subnet_id" {
  description = "Subnet ID to associate the AKS cluster with"
  type = string
}

variable "default_node_pool" {
  description = "Default node pool configuration"
  type = object({
    name = string
    node_count = number
    vm_size = string
  })
}

variable "admin_group_object_ids" {
  description = "List of Azure AD group objects IDs for cluster admins"
  type = list(string)
}

variable "dns_service_ip" {
  type = string
  description = "DNS service IP"
}

variable "service_cidr" {
  type = string
  description = "Service CIDR"
}

variable "tenant_id" {
  description = "Azure Active Directory tenant ID"
  type = string
}

variable "tags" {
  description = "Tags to apply to the cluster"
  type = map(string)
  default = {}
}