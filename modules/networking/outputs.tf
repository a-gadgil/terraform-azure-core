output "resource_group_name" {
  value = azurerm_resource_group.this.name
}

output "resource_group_location" {
  value = azurerm_resource_group.this.location
}

output "virtual_network_name" {
  value = azurerm_virtual_network.vnet.name
}

output "subnet_id" {
    value = azurerm_subnet.subnet.id
}
