variable "name" {
  description = "The name of the ACR"
  type = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type = string
}

variable "location" {
  description = "Azure region"
  type = string
}

variable "sku" {
  description = "The SKU of the ACR (Basic, Standard, Premium)"
  type = string
  default = "Basic"
}

variable "admin_enabled" {
  description = "Enable admin access to the ACR"
  type = bool
  default = false
}

variable "tags" {
  description = "Tags to apply to the ACR"
  type = map(string)
  default = {}
}