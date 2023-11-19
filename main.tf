#setup remote state
terraform {
  backend "azurerm" {
    resource_group_name = "rg-terraformstate-vm"
    storage_account_name = "myterrastatevm"
    container_name = "terraform-vm"
    key = "terraform-vm.tfstate"
  }
}



module "azurerm_linux" {
  source              = "./azurerm_linux"
  virtual_network = var.virtual_network
  subnet = var.subnet
  public_ip = var.public_ip
  network_security_group = var.network_security_group
  network_interface = var.network_interface
  network_interface_security_group_association = var.network_interface_security_group_association
  storage_account = var.storage_account
  ssh_key = var.ssh_key
  generated_key = var.generated_key
  kv = var.kv
  kv-vm-secret = var.kv-vm-secret
  virtual_machine = var.virtual_machine

}

module "azurerm_win" {
  source              = "./azurerm_win"
virtual_network = var.virtual_network
  subnet = var.subnet
  public_ip = var.public_ip
  network_security_group = var.network_security_group
  network_interface = var.network_interface
  network_interface_security_group_association = var.network_interface_security_group_association
  storage_account = var.storage_account
  key_vault = var.key_vault
  key_vault_secret = var.key_vault_secret
  virtual_machine_extension = var.virtual_machine_extension
  virtual_machine = var.virtual_machine

}
