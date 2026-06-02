terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.74.0"
    }
  }
}

provider "azurerm" {
  features{}
}
resource "azurerm_resource_group" "dilip" {
  name = "diliprg"
  location = "central india"
}
resource "azurerm_storage_account" "store" {
  name = "storageaccount"
  resource_group_name = azurerm_storage_account.dilip
  location = azurerm_storage_account.location
  account_tier = "Standard"
  account_replication_type = "LRS"

  
}