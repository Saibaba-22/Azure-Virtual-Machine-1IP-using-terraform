resource "azurerm_linux_virtual_machine" "vm1" {
#vm basic 
  name                = var.vm1_name
  resource_group_name = azurerm_resource_group.rg1.name
  location            = azurerm_resource_group.rg1.location
  size                = "Standard_D2ls_v5"
  network_interface_ids = [azurerm_network_interface.nic1.id]

# VM size 
  os_disk {
    name = "myOSdisk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

# OS 
  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts-gen2"
    version   = "latest"
  }

# authentication 
  computer_name = "hostname"
  admin_username      = var.username
  disable_password_authentication = false 
  admin_password = var.password 

}