output "app_service_default_hostname" {
  value       = azurerm_linux_web_app.app.default_hostname
  description = "The default URL of the deployed App Service"
}