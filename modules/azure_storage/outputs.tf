output "storage_account_name" {
  value       = azurerm_storage_account.main.name
  description = "Name of the created storage account"
}

output "primary_access_key" {
  value       = azurerm_storage_account.main.primary_access_key
  description = "Primary access key for the storage account"
  sensitive   = true
}