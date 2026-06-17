variable "vnet_name" {
  type        = string
  description = "Name of the Virtual Network"
}

variable "address_space" {
  type        = list(string)
  description = "Address space for the Virtual Network, e.g. [\"10.0.0.0/16\"]"
}

variable "location" {
  type        = string
  description = "Azure region where the VNet and Subnet will be created"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the Resource Group where the VNet and Subnet will be created"
}

variable "subnet_name" {
  type        = string
  description = "Name of the Subnet"
}

variable "subnet_address_prefixes" {
  type        = list(string)
  description = "Address prefixes for the Subnet, e.g. [\"10.0.1.0/24\"]"
}