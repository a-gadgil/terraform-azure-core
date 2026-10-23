# environments/prod.tf

terraform {
  required_version = ">= 1.6.0"
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

# 1. Production Env Resource Group
resource "azurerm_resource_group" "prod" {
  name     = "rg-prod-01"
  location = "East US"
}

# 2. Instantiating the shared compute module for production
module "compute" {
  source              = "../../modules/azure_compute"
  resource_group_name = azurerm_resource_group.prod.name
  location            = azurerm_resource_group.prod.location
  environment         = "prod"
  vm_size             = "Standard_D2s_v3" # Production-tier compute SKU
}

# 3. Surfacing Module Outputs
output "prod_vm_private_ip" {
  value       = module.compute.vm_private_ip
  description = "Private IP of the production virtual machine"
}