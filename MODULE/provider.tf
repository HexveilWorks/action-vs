

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
  backend "azurerm" {
   resource_group_name   = "rg-terraform-01"                               
    storage_account_name = "kimstorezeenest"                            
    container_name       = "tfstate"                                  
    key                  = "prod.terraform.tfstate"                   
  }
}

provider "azurerm" {
  features {}
  subscription_id = "aaa2cae7-98a0-464c-b899-b276d44b6d7c"
}