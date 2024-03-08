# configure the azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
  /* not needed in VCS Flow
  cloud {
    organization = "kumarsachin437"

    workspaces {
      name = "my-TF-workspace"
    }
  }
  */
  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = "westus2"
}

variable "rg_name" {
  description = "Name of resource group"
  default     = "DefaultRGName"

}
output "resource_group_name" {
  description = "Name of Resource group"
  value       = azurerm_resource_group.rg.name

}