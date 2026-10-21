output "vm_id" {
  description = "The ID of the Virtual Machine"
  value       = azurerm_linux_virtual_machine.vm.id
}

output "public_ip_address" {
  description = "The assigned Public IP address of the VM"
  value       = azurerm_public_ip.pip.ip_address
}

output "nic_id" {
  description = "The ID of the Network Interface"
  value       = azurerm_network_interface.nic.id
}
