   variable "resource_group_name" {
      description = "The name of the resource group in which to create the resources."
      type        = string
    }

    variable "location" {
      description = "The Azure region in which to create the resources."
      type        = string
    }

    variable "environment" {
      description = "The environment for which the resources are being created (e.g., dev, test, prod)."
      type        = string
    }

    variable "vm_size" {
      description = "The size of the virtual machine to create."
      type        = string
      default     = "Standard_B1s"
    }
    