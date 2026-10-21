output "storage_account_id" {
  value       = azurerm_storage_account.storage.id
  description = "The ID of the storage account"
}

output "storage_account_name" {
  value       = azurerm_storage_account.storage.name
  description = "The name of the storage account"
}

output "primary_connection_string" {
  value       = azurerm_storage_account.storage.primary_connection_string
  description = "Primary connection string for the storage account"
  sensitive   = true
}