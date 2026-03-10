variable "location" {
  type        = string
  default     = "spaincentral"
}

variable "resource_group_name" {
  type        = string
  default     = "rg-devops-azure"
}

variable "vm_name" {
  type        = string
  default     = "vm-podman"
}

variable "vm_size" {
  type        = string
  default     = "Standard_B2s_v2"
}

variable "admin_username" {
  type        = string
  default     = "devops"
}

variable "acr_name" {
  type        = string
  default     = "acrdevopsalfredo"
}