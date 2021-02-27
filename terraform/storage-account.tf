resource "azurerm_storage_account" "main" {
    for_each                 = toset(var.REGIONS)
    name                     = "sa${local.region_resource_prefix_condensed}${each.key}"
    location                 = azurerm_resource_group.main[each.key].location
    resource_group_name      = azurerm_resource_group.main[each.key].name
    account_tier             = "Standard"
    account_replication_type = "GRS"

    tags = merge(local.tags, {"location": each.key})
}