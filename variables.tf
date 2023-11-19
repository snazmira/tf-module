variable "resource_group_location" {
  type        = string
  default     = "eastus2"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "username" {
  type        = string
  description = "The username for the local account that will be created on the new VM."
  default     = "azureuser"
}

variable "virtual_network" {
  
}

variable "subnet" {
  
}

variable "public_ip" {
  
}

variable "network_security_group" {
  
}

variable "network_interface" {
  
}


variable "network_interface_security_group_association" {
  
}

variable "storage_account" {
  
}


variable "ssh_key" {
}

variable "generated_key" {
}

variable "kv" {
}

variable "kv-vm-secret" {
  
}

variable "virtual_machine" {
  
}

variable "kv_secret_name" {
  type = string
  default = "wins-kv-002"
  description = "kv secret name"
}

variable "virtual_network" {
  
}

variable "subnet" {
  
}

variable "public_ip" {
  
}

variable "network_security_group" {
  
}

variable "network_interface" {
  
}


variable "network_interface_security_group_association" {
  
}

variable "storage_account" {
  
}

variable "key_vault" {
  
}

variable "key_vault_secret" {
  
}

variable "virtual_machine_extension" {
  
}


variable "virtual_machine" {
  
}
