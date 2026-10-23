# environments/stag.tf

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

# 1. Staging Env Resource Group
resource "azurerm_resource_group" "stag" {
  name     = "rg-stag-01"
  location = "East US"
}

# 2. Instantiating the shared compute module
module "compute" {
  source              = "../../modules/azure_compute"
  resource_group_name = azurerm_resource_group.stag.name
  location            = azurerm_resource_group.stag.location
  environment         = "stag"
  vm_size             = "Standard_B2s" # Slightly larger for pre-production validation
}

# 3. Surfacing Module Outputs
output "stag_vm_private_ip" {
  value       = module.compute.vm_private_ip
  description = "Private IP of the staging virtual machine"
}