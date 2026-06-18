variable "location" {
  type        = string
  description = "Azure region where resources will be deployed"
  default     = "West Europe"
}

variable "environment" {
  type        = string
  description = "Deployment environment name (e.g., dev, staging, prod)"
  default     = "dev"

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "environments are: dev, staging, prod."
  }
}

variable "project_name" {
  type        = string
  description = "Project name used as a prefix for resource naming"
  default     = "terraform-lab"
}

# اضافه به environments/dev/variables.tf

variable "vnet_address_space" {
  type        = list(string)
  description = "Address space for the dev VNet"
  default     = ["10.0.0.0/16"]
}

variable "subnet_address_prefixes" {
  type        = list(string)
  description = "Address prefixes for the dev Subnet"
  default     = ["10.0.1.0/24"]
}

variable "acr_sku" {
  type        = string
  description = "SKU for the Container Registry"
  default     = "Basic"
}

variable "acr_admin_enabled" {
  type        = bool
  description = "Whether the admin user is enabled on the Container Registry"
  default     = false
}

variable "aks_vm_size" {
  type        = string
  description = "VM size for the AKS default node pool"
  default     = "Standard_B2s_v2"
}

variable "aks_min_count" {
  type        = number
  description = "Minimum node count for AKS autoscaling"
  default     = 1
}

variable "aks_max_count" {
  type        = number
  description = "Maximum node count for AKS autoscaling"
  default     = 3
}