variable "name" {
  type        = string
  description = "Name of the Key Vault (must be globally unique, 3-24 alphanumeric chars)"
}

variable "location" {
  type        = string
  description = "Azure region where the Key Vault will be created"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the Resource Group where the Key Vault will be created"
}

variable "postgres_password" {
  type        = string
  description = "PostgreSQL administrator password to store as a Key Vault secret"
  sensitive   = true
}