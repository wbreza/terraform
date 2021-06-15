resource "azurerm_function_app" "main" {
    name                       = "func-${local.region_resource_prefix}-${local.region}"
    location                   = local.region
    resource_group_name        = local.resourceGroupName
    app_service_plan_id        = azurerm_app_service_plan.main.id
    storage_account_name       = azurerm_storage_account.main.name
    storage_account_access_key = azurerm_storage_account.main.primary_access_key

    tags = local.tags
}