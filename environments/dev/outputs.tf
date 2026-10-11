output "resource_group_name" {
  value = module.networking.resource_group_name
}

output "vm_public_ip" {
  value       = module.compute.public_ip_address
  description = "Public IP address of the dev virtual machine"
}