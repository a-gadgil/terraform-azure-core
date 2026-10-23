output "vm_id" {
  description = "The ID of the created virtual machine."
  value       = azurerm_linux_virtual_machine.main.id
}

output "vm_private_ip" {
  description = "The private IP address of the created virtual machine."
  value       = azurerm_network_interface.main.private_ip_address
}

output "vm_public_ip" {
  description = "The public IP address of the created virtual machine."
  value       = azurerm_public_ip.main.ip_address
}

