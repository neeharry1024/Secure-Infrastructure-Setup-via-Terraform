variable "location" {
  default = "Central India"
}

variable "resource_group_name" {
  default = "secure-rg"
}

variable "vm_name" {
  default = "secure-linux-vm"
}

variable "admin_username" {
  default = "azureuser"
}

variable "public_key_path" {
  description = "Path to SSH public key"
}

variable "vm_size" {
  default = "Standard_B1s"
}
