variable "location" {
  type        = string
  description = "Azure region for deployment"
}

variable "ssh_public_key" {
  type        = string
  description = "SSH public key for virtual machine access"
}
