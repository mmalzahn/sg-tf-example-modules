resource "azurerm_network_interface" "eth" {
  name                = "eth0-${var.app-name}"
  location            = var.region
  resource_group_name = var.rgname
  ip_configuration {
    name                          = "default"
    subnet_id                     = var.subnet-id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "vm" {
  # count                 = 1
  name                  = "vm${count.index + 1}-${var.app-name}"
  resource_group_name   = var.rgname
  admin_username        = "hans"
  admin_password        = "Password123!"
  location              = var.region
  network_interface_ids = [azurerm_network_interface.eth.id]
  size                  = "Standard_A1_v2"
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  provision_vm_agent                = true
  vm_agent_platform_updates_enabled = true
  source_image_reference {
    publisher = "MicrosoftWindowsDesktop"
    offer     = "windows11preview"
    sku       = "win11-24h2-pro"
    version   = "26100.1742.240906"
  }
}
