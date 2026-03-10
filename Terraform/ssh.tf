resource "tls_private_key" "vm_ssh" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "azurerm_ssh_public_key" "vm_ssh_key" {
  name                = "sshkey-devops"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  public_key          = tls_private_key.vm_ssh.public_key_openssh

  tags = {
    environment = "casopractico2"
  }
}