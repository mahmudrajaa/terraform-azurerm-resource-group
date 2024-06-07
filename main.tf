terraform {
  backend "azurerm" {
    resource_group_name  = "dev-project2-remotestate"
    storage_account_name = "project2remotestate"
    container_name       = "network-terraform-state"
    key                  = "nw-terraform.tfstate"
  }
}

module "naming" {
  source  = "Azure/naming/azurerm"
  version = "0.4.1"
  prefix = ["${var.environment}","${var.rgpurpose}"]
}

resource "azurerm_resource_group" "example" {
  name     = module.naming.resource_group.name
  location = var.location

tags = {
    Environment = var.environment
    Purpose     = var.rgpurpose
  }
}


