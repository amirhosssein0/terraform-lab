resource "azurerm_postgresql_flexible_server" "this" {
  name                   = var.name
  location               = var.location
  resource_group_name    = var.resource_group_name
  sku_name               = var.sku_name
  storage_mb             = var.storage_mb
  version                = var.postgres_version
  administrator_login    = var.administrator_login
  administrator_password = var.administrator_password

  lifecycle {
    ignore_changes = [zone]
  }
}