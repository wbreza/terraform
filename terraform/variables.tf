variable "BUSINESS_UNIT" {
  type    = string
  default = "contoso"
}

variable "APP_NAME" {
  type    = string
  default = "processing"
}

variable "PRIMARY_REGION" {
  type    = string
  default = "westus"
}

variable "REGIONS" {
  type    = list(string)
  default = ["westus", "eastus"]
}