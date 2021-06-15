resource "azurerm_resource_group" "main" {
    name     = "rg-${local.region_resource_prefix}-${local.region}"
    location = local.region
    tags = local.tags
}