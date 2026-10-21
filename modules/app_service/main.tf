# modules/app_service/main.tf

resource "azurerm_service_plan" "main" {
  name                = "plan-${var.app_name_prefix}-${var.environment}"
  location            = var.location
  resource_group_name = var.resource_group_name # passed or referenced via parent
  os_type             = "Linux"
  sku_name            = var.sku_size

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

resource "azurerm_linux_web_app" "main" {
  name                = "app-${var.app_name_prefix}-${var.environment}"
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = azurerm_service_plan.main.id

  site_config {
    always_on = var.sku_tier == "Free" ? false : true
  }

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}