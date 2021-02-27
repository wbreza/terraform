resource "azurerm_resource_group" "main" {
  name     = "rg-${local.region_resource_prefix}"
  location = var.REGION
  tags     = local.tags
}