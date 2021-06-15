resource "azurerm_storage_account" "main" {
    name                     = "sa${local.region_resource_prefix_condensed}${local.region}"
    location                 = local.region
    resource_group_name      = local.resourceGroupName
    account_tier             = "Standard"
    account_replication_type = "GRS"

    tags = local.tags
}