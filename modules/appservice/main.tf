resource "azurerm_service_plan" "plan" {
  name                = "plan-${var.app_name}-${var.environment}"
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = "Linux"
  sku_name            = var.environment == "prod" ? "P1v3" : "B1"

  tags = {
    environment = var.environment
  }
}

resource "azurerm_linux_web_app" "app" {
  name                = "app-${var.app_name}-${var.environment}"
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = azurerm_service_plan.plan.id

  site_config {
    always_on = var.environment == "prod" ? true : false
    application_stack {
      node_version = "20-lts"
    }
  }

  tags = {
    environment = var.environment
  }
}