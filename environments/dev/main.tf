terraform {
  required_version = ">= 1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

locals {
  common_tags = {
    Environment = "dev"
    ManagedBy   = "Terraform"
    Project     = "DevOps-Core"
  }
}

# 1. Instantiate Networking Module
module "networking" {
  source = "../../modules/networking"

  resource_group_name     = "rg-devops-core-dev"
  location                = var.location
  vnet_name               = "vnet-dev-eastus"
  vnet_address_space      = ["10.0.0.0/16"]
  subnet_name             = "snet-dev-app"
  subnet_address_prefixes = "10.0.1.0/24"

  tags = local.common_tags
}

# 2. Instantiate Compute Module
module "compute" {
  source = "../../modules/compute"

  resource_group_name = module.networking.resource_group_name
  location            = var.location
  subnet_id           = module.networking.subnet_id
  vm_name             = "vm-dev-app"
  vm_size             = "Standard_B1s"
  admin_username      = "azureuser"
  ssh_public_key      = var.ssh_public_key

  tags = local.common_tags
}