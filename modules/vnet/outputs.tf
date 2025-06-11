output "vnet_name" {
  value = azurerm_virtual_network.this.name
  description = "The name of the virtual network"
}

output "subnet_ids" {
  value = [for s in azurerm_subnet.this : s.id]
  description = "List of subnet IDs"
}