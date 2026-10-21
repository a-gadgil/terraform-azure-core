output "namespace_id" {
  value       = azurerm_servicebus_namespace.ns.id
  description = "The ID of the Service Bus Namespace"
}

output "primary_connection_string" {
  value       = azurerm_servicebus_namespace.ns.default_primary_connection_string
  description = "Primary connection string for application integration"
  sensitive   = true
}
