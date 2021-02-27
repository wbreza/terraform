variable "BUSINESS_UNIT" {
  type = string
  default = "contoso"
}

variable "APP_NAME" {
  type = string
  default = "processing"
}

variable "REGIONS" {
    type = list(string)
    default = ["westus2","eastus2"]
}