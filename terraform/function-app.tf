resource "azurerm_function_app" "main" {
    for_each                   = toset(var.REGIONS)
    name                       = "func-${local.region_resource_prefix}-${each.key}"
    location                   = azurerm_resource_group.main[each.key].location
    resource_group_name        = azurerm_resource_group.main[each.key].name
    app_service_plan_id        = azurerm_app_service_plan.main[each.key].id
    storage_account_name       = azurerm_storage_account.main[each.key].name
    storage_account_access_key = azurerm_storage_account.main[each.key].primary_access_key

    tags = merge(local.tags, {"location": each.key})
}