variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resource group"
  type        = string
}

variable "environment" {
  description = "The environment for the resources (e.g., dev, test, prod)"
  type        = string
}

variable "account_tier" {
  description = "The account tier for the resources (e.g., standard, premium)"
  type        = string
  default     = "standard"
}

variable "account_replication_type" {
  description = "The replication type for the resources (e.g., LRS, GRS)"
  type        = string
  default     = "LRS"
}



