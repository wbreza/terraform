resource "azurerm_resource_group" "main" {
    for_each = toset(var.REGIONS)
    name     = "rg-${local.region_resource_prefix}-${each.key}"
    location = each.key
    tags = merge(local.tags, {"location": each.key})
}