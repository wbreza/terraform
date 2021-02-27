resource "azurerm_app_service_plan" "main" {
    for_each            = toset(var.REGIONS)
    name                = "asp-${local.region_resource_prefix}-${each.key}"
    location            = azurerm_resource_group.main[each.key].location
    resource_group_name = azurerm_resource_group.main[each.key].name
    kind                = "FunctionApp"

    sku {
        tier = "Dynamic"
        size = "Y1"
    }

    tags = merge(local.tags, {"location": each.key})
}