module "resource_group" {
  source   = "../../modules/resource-group"
  name     = "${var.project_name}-${var.environment}-rg"
  location = var.location
}

module "vnet" {
  source                  = "../../modules/vnet"
  vnet_name                = "${var.project_name}-${var.environment}-vnet"
  address_space            = var.vnet_address_space
  location                 = var.location
  resource_group_name      = module.resource_group.name
  subnet_name              = "${var.project_name}-${var.environment}-subnet1"
  subnet_address_prefixes  = var.subnet_address_prefixes
}

module "acr" {
  source              = "../../modules/acr"
  name                = "${replace(var.project_name, "-", "")}${var.environment}acr"
  resource_group_name = module.resource_group.name
  location            = var.location
  sku                 = var.acr_sku
  admin_enabled       = var.acr_admin_enabled
}

module "aks" {
  source               = "../../modules/aks"
  name                 = "${var.project_name}-${var.environment}-aks"
  location             = var.location
  resource_group_name  = module.resource_group.name
  dns_prefix           = "${var.project_name}-${var.environment}"
  vm_size              = var.aks_vm_size
  min_count            = var.aks_min_count
  max_count            = var.aks_max_count
  vnet_subnet_id       = module.vnet.subnet_id
}

resource "azurerm_role_assignment" "aks_acr_pull" {
  principal_id                    = module.aks.kubelet_identity_object_id
  role_definition_name            = "AcrPull"
  scope                            = module.acr.id
  skip_service_principal_aad_check = true
}

resource "random_password" "postgres" {
  length  = 20
  special = true
}

module "postgresql" {
  source                  = "../../modules/postgresql"
  name                    = "${var.project_name}-${var.environment}-psql3"  
  location                = var.postgres_location
  resource_group_name     = module.resource_group.name
  administrator_login     = var.postgres_admin_login
  administrator_password  = random_password.postgres.result
}

module "keyvault" {
  source              = "../../modules/keyvault"
  name                = "${replace(var.project_name, "-", "")}${var.environment}kv"
  location             = var.location
  resource_group_name  = module.resource_group.name
  postgres_password    = random_password.postgres.result
}