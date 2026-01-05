resource "azurerm_windows_virtual_machine" "vm1" {
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
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2022-Datacenter"
    version   = "latest"
  }
# authentication 
  computer_name = "hostname"
  admin_username      = var.username
  admin_password = var.password 

}