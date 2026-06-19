terraform {
  required_providers {
    azurerm ={
        source = "hashicrop/azurerm"
        version = "4.75.0"
    }
  }
}
provider "azurerm" {
    features {}
  
}