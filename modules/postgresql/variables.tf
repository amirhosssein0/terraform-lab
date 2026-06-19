variable "name" {
  type        = string
  description = "Name of the PostgreSQL Flexible Server (must be globally unique)"
}

variable "location" {
  type        = string
  description = "Azure region where the PostgreSQL Flexible Server will be created"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the Resource Group where the PostgreSQL Flexible Server will be created"
}

variable "sku_name" {
  type        = string
  description = "SKU name for the PostgreSQL Flexible Server, e.g. B_Standard_B1ms (cheapest burstable tier)"
  default     = "B_Standard_B1ms"
}

variable "storage_mb" {
  type        = number
  description = "Storage size in MB, e.g. 32768 (minimum allowed)"
  default     = 32768
}

variable "postgres_version" {
  type        = string
  description = "PostgreSQL major version, e.g. 16"
  default     = "16"
}

variable "administrator_login" {
  type        = string
  description = "Administrator login username for the PostgreSQL server"
}

variable "administrator_password" {
  type        = string
  description = "Administrator login password for the PostgreSQL server"
  sensitive   = true
}