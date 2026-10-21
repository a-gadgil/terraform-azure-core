variable "resource_group_name" {
    type = string
    description = "The name of the resource group in which to create the resources."
}

variable "location" {
    type = string
    description = "The location of the resource group in which to create the resources."
}

variable "subnet_id" {
    type = string
    description = "The ID of the subnet to create the resources in."
}

variable "vm_name" {
    type = string
    description = "The name of the virtual machine to create."
}

variable "vm_size" {
    type = string
    description = "The size of the virtual machine to create."
    default = "Standard_B1s"
}

variable "admin_username" {
    type = string
    description = "The admin username for the virtual machine."
    default = "adminuser"
}

variable "ssh_public_key" {
    type = string
    description = "The SSH public key for the virtual machine."
}

variable "tags" {
    type = map(string)
    default = {}
    description = "A map of tags to assign to the resources."
}
