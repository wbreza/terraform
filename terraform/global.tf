module "global" {
  source = "./global"

  BUSINESS_UNIT = var.BUSINESS_UNIT
  APP_NAME      = var.APP_NAME
  REGION        = var.PRIMARY_REGION
}