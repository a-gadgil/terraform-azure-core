resource "azurerm_servicebus_namespace" "ns" {
  name                = "sb-core-${var.environment}-${var.location}"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "Standard"

  tags = {
    environment = var.environment
  }
}

resource "azurerm_servicebus_queue" "queue" {
  name         = var.queue_name
  namespace_id = azurerm_servicebus_namespace.ns.id

  partitioning_enabled = true
}
