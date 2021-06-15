resource "azurerm_app_service_plan" "main" {
    name                = "asp-${local.region_resource_prefix}-${local.region}"
    location            = local.region
    resource_group_name = local.resourceGroupName
    kind                = "FunctionApp"

    sku {
        tier = "Dynamic"
        size = "Y1"
    }

    tags = local.tags
}