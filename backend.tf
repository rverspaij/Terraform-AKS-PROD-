terraform {
  backend "azurerm" {
    resource_group_name = "rg-terraform-state"
    storage_account_name = "tfstatestorageraoul12345"
    container_name = "tfstate"
    key = "infrastructure.terraform.tfstate"
  }
}