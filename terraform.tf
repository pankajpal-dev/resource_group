terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.68.0"
    }
  }
}
provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "hari" {
  name     = "shri-rg"
  location = "West Europe"
}
resource "azurerm_storage_account" "example" {
  name                     = "always"
  resource_group_name      = azurerm_resource_group.hari.name
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
