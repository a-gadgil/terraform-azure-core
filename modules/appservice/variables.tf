variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure region where the resources will be created."
  type        = string
}

variable "environment" {
  description = "The environment for the resources (e.g., dev, test, prod)."
  type        = string
}

variable "app_name" {
  description = "The name of the application."
  type        = string
}

