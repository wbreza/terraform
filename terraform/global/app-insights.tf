resource "azurerm_application_insights" "example" {
  name                = "ai-${local.region_resource_prefix}-${local.region}"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  application_type    = "web"
}