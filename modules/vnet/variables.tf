variable "vnet_name" {
  description = "The name of the virtual network"
  type = string
}

variable "address_space" {
  description = "The address space of the virtual network"
  type = list(string)
}

variable "location" {
  description = "The Azure region"
  type = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type = string
}

variable "tags" {
  description = "A map of tags to apply to the VNet"
  type = map(string)
  default = {}
}

variable "subnets" {
  description = "A list of subnets to create"
  type = list(object({
    name = string
    address_prefix = string
  }))
}