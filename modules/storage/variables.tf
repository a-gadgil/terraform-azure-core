variable "environment" {
  description = "The environment for the deployment (e.g., dev, staging, prod)"
  type        = string
  }

  variable "region" {
  description = "The azure region where resources will be deployed"
  type        = string
  default     = "eastus"
  }

  variable "resource_group_name" {
  description = "The name of the resource group to create"
  type        = string
  }

  variable "account_tier" {
  description = "The tier of the storage account (Standard or Premium)"
  type        = string
  default     = "Standard"
  }

  variable "account_replication_type" {
  description = "The replication type of the storage account (LRS, GRS, ZRS, etc.)"
  type        = string
  default     = "LRS"
  }

  variable "container_name" {
  description = "The name of the blob container to create"
  type        = string
  }

  