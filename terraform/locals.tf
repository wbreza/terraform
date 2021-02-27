locals {
  // Region Resource Prefixes
  region_resource_prefix           = "${var.BUSINESS_UNIT}-${var.APP_NAME}-${terraform.workspace}"
  region_resource_prefix_condensed = replace(local.region_resource_prefix, "-", "")

  // Global Resource Prefixes
  global_resource_prefix           = "${var.BUSINESS_UNIT}-${var.APP_NAME}-${terraform.workspace}-gbl"

  // Tags applied to azure resources
  tags = {
      "appName" = var.APP_NAME
      "businessUnit" = var.BUSINESS_UNIT
      "env" = terraform.workspace
  }
}
