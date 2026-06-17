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