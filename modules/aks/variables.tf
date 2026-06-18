variable "name" {
  type        = string
  description = "Name of the AKS cluster"
}

variable "location" {
  type        = string
  description = "Azure region where the AKS cluster will be created"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the Resource Group where the AKS cluster will be created"
}

variable "dns_prefix" {
  type        = string
  description = "DNS prefix for the AKS cluster (3-45 chars, letters/numbers/hyphens, must be unique)"
}

variable "vm_size" {
  type        = string
  description = "VM size for the default node pool, e.g. Standard_D2s_v5"
}

variable "min_count" {
  type        = number
  description = "Minimum number of nodes when autoscaling"
}

variable "max_count" {
  type        = number
  description = "Maximum number of nodes when autoscaling"
}

variable "vnet_subnet_id" {
  type        = string
  description = "ID of the Subnet where the AKS node pool will be deployed (from the vnet module)"
}