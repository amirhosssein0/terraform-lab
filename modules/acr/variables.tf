variable "name" {
  type        = string
  description = "Name of the Container Registry (must be globally unique, alphanumeric characters only)"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the Resource Group where the Container Registry will be created"
}

variable "location" {
  type        = string
  description = "Azure region where the Container Registry will be created"
}

variable "sku" {
  type        = string
  description = "SKU tier of the Container Registry (Basic, Standard, or Premium)"
  default     = "Basic"
}

variable "admin_enabled" {
  type        = bool
  description = "Whether the admin user (username/password) is enabled for the Container Registry"
  default     = false
}