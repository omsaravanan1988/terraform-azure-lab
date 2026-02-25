terraform {
  backend "azurerm" {
    resource_group_name  = "example-resources"
    storage_account_name = "labtfremotebackendsa "
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}