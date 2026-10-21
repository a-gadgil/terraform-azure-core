terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-terraform-state-dev"
    storage_account_name = "tfstatecorestag13797"
    container_name       = "tfstate"
    key                  = "stag.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-core-${var.environment}-${var.location}"
  location = var.location
}

module "servicebus" {
  source              = "../../modules/servicebus"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  environment         = var.environment
  queue_name          = var.queue_name
}

module "app_service" {
  source              = "../../modules/appservice"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  environment         = var.environment
  app_name            = var.app_name
}
