terraform {
  required_version = ">= 1.5.0"

  backend "azurerm" {
    resource_group_name  = "rg-tfstate-001"
    storage_account_name = "tfstatedata001"
    container_name       = "tfstate"
    key                  = "prod.appservice.tfstate"
  }
}

data "azurerm_resource_group" "prod" {
  name = "rg-prod-001"
}

module "app_service" {
  source              = "../../modules/app_service"
  environment         = "prod"
  location            = data.azurerm_resource_group.prod.location
  resource_group_name = data.azurerm_resource_group.prod.name
  app_name_prefix     = "core-api"
  sku_tier            = "Standard"
  sku_size            = "S1"
}