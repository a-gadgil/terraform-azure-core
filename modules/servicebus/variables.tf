variable "resource_group_name" {
  description = "The name of the resource group in which to create the resources."
  type        = string
}

variable "location" {
  description = "The Azure region in which to create the resources."
  type        = string
}

variable "environment" {
  description = "The environment for the resources (e.g., dev, test, prod)."
  type        = string
}

variable "queue_name" {
  description = "The name of the Azure Storage Queue."
  type        = string
}
