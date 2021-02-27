resource "azurerm_storage_account" "main" {
  name                     = "sa${local.region_resource_prefix_condensed}"
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = local.tags
}