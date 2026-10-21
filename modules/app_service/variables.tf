# modules/app_service/variables.tf

variable "environment" {
  type        = string
  description = "Environment name (e.g., dev, test, stag, prod)"
}

variable "location" {
  type        = string
  description = "Azure region for resources"
}

variable "app_name_prefix" {
  type        = string
  description = "Prefix for the App Service and Plan"
}

variable "sku_tier" {
  type        = string
  description = "App Service Plan SKU Tier (e.g., Free, Basic, Standard)"
  default     = "Basic"
}

variable "sku_size" {
  type        = string
  description = "App Service Plan SKU Size (e.g., F1, B1, S1)"
  default     = "B1"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group where the App Service will be created"
}