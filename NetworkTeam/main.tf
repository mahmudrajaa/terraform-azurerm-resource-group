terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.1.0"
    }
  }
}
provider "azurerm" {
  features {
  }
}

variable "environment" {
  default = "dev"
}

variable "rgpurpose" {
  default = "Homework2"
}

module "resource-group" {
  source  = "mahmudrajaa/resource-group/azurerm"
  version = "0.0.1"
  
  location = "eastus"
  environment = var.environment
  rgpurpose = var.rgpurpose
}
