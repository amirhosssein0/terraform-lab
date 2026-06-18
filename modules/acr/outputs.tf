output "id" {
  value       = azurerm_container_registry.this.id
  description = "ID of the Container Registry"
}

output "login_server" {
  value       = azurerm_container_registry.this.login_server
  description = "Login server URL of the Container Registry (e.g. myregistry.azurecr.io)"
}