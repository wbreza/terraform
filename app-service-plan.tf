resource "azurerm_app_service_plan" "main" {
  name                = "asp-${local.region_resource_prefix}"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  kind                = "FunctionApp"

  sku {
    tier = "Dynamic"
    size = "Y1"
  }

  tags     = local.tags
}