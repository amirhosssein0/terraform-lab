output "vnet_id" {
  value       = azurerm_virtual_network.this.id
  description = "ID of the created Virtual Network"
}

output "vnet_name" {
  value       = azurerm_virtual_network.this.name
  description = "Name of the created Virtual Network"
}

output "subnet_id" {
  value       = azurerm_subnet.this.id
  description = "ID of the created Subnet"
}

output "subnet_name" {
  value       = azurerm_subnet.this.name
  description = "Name of the created Subnet"
}