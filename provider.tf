# version setting block 

terraform {
  required_version = ">= 1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.0"
    }
  }
}


# provider block 
provider "azurerm" {
  features {}
    # configuration options
    client_id = "Client_id"
    client_secret = "Client_secret"
    tenant_id = "tenant_ID"
    subscription_id = "Subcription_ID"
}

# backend block 
terraform {
  backend "azurerm" {
    access_key = "Access_key"
    storage_account_name = "storage_account_name"
    container_name = "container_name"
    key = "prod.terraform.tfstate"
  }
}
