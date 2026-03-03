variable "location" {
  description = "Azure region"
  type        = string
  default     = "spaincentral"
}

variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
  default     = "rg-devops-retos"
}

variable "vm_name" {
  description = "Virtual machine name"
  type        = string
  default     = "vm-podman"
}

variable "vm_size" {
  description = "VM size"
  type        = string
  default     = "Standard_B1ms"
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
  default     = "devops"
}

variable "acr_name" {
  description = "Azure Container Registry name"
  type        = string
  default     = "acrdevopsalfredo"
}