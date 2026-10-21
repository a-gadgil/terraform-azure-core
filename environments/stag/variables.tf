variable "location" {
  type        = string
  description = "Azure region for staging resources"
  default     = "eastus"
}

variable "environment" {
  type        = string
  description = "Environment tier name"
  default     = "stag"
}

variable "queue_name" {
  type        = string
  description = "Name of the Service Bus queue for staging"
  default     = "staging-jobs-queue"
}

variable "app_name" {
  type        = string
  description = "Application identifier for the App Service"
  default     = "api-gateway"
}
