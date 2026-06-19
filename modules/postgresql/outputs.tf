output "name" {
  value       = azurerm_postgresql_flexible_server.this.name
  description = "Name of the PostgreSQL Flexible Server"
}

output "fqdn" {
  value       = azurerm_postgresql_flexible_server.this.fqdn
  description = "Fully qualified domain name of the PostgreSQL Flexible Server"
}