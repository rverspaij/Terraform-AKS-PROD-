variable "name" {
  description = "Key Vault name"
  type = string
}

variable "location" {
  description = "Azure Region"
  type = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type = string
}

variable "tenant_id" {
  description = "Azure AD tenant ID"
  type = string
}

variable "sku_name" {
  description = "Key Vault SKU (standard or premium)"
  type = string
  default = "standard"
}

variable "tags" {
  description = "Tags to apply to the Key Vault"
  type = map(string)
  default = {}
}