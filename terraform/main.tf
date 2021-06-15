terraform {
  required_providers {
    azurerm = {
      version = "~> 2.44"
    }
  }
}

provider "azurerm" {
  features {
    key_vault {
      recover_soft_deleted_key_vaults = false
      purge_soft_delete_on_destroy    = true
    }
  }
  skip_provider_registration = true
  storage_use_azuread        = false
}