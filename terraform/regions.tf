module "regions" {
  for_each = toset(var.REGIONS)
  source   = "./region"

  BUSINESS_UNIT = var.BUSINESS_UNIT
  APP_NAME      = var.APP_NAME
  REGION        = each.key

  depends_on = [
    module.global
  ]
}