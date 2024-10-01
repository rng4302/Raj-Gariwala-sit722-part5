resource "azurerm_resource_group" "rg" {
  name     = var.app_name
  location = var.location
}