module "functions" {
    source = "../functions"

    BUSINESS_UNIT = var.BUSINESS_UNIT
    APP_NAME = var.APP_NAME
    REGION = var.REGION

    depends_on = [
        azurerm_resource_group.main
    ]
}