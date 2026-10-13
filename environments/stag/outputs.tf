    output "resource_group_name" {
  value       = azurerm_resource_group.rg.name
  description = "The name of the staging resource group"
}

output "servicebus_namespace_id" {
  value       = module.servicebus.namespace_id
  description = "The Service Bus Namespace ID"
}

output "app_service_url" {
  value       = module.app_service.app_service_default_hostname
  description = "Default URL for the staging App Service"
}