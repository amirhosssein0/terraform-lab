output "vault_id" {
  value       = azurerm_key_vault.this.id
  description = "ID of the Key Vault"
}

output "vault_uri" {
  value       = azurerm_key_vault.this.vault_uri
  description = "URI of the Key Vault, used to reference secrets"
}