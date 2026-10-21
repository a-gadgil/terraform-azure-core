variable "resource_group_name" {
    type        = string
    description = "The name of the resource group in which to create the resources."
}

variable "location" {
    type        = string
    description = "The Azure region in which to create the resources."
}

variable "vnet_name" {
    type        = string
    description = "The name of the virtual network to create."
}

variable "vnet_address_space" {
    type        = list(string)
    description = "The address space for the virtual network."
}

variable "subnet_name" {
    type        = string
    description = "The name of the subnet to create."
}

variable "subnet_address_prefixes" {
    type        = string
    description = "The address prefix for the subnet."
}

variable "tags" {
    type        = map(string)
    default     = {}
    description = "A map of tags to assign to the resources."
}
