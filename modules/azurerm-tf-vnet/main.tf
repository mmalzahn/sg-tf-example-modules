resource "azurerm_virtual_network" "vnet" {
  name = "vnet-${var.app-name}"
  resource_group_name = var.rgname
  location = var.region
  address_space = [ var.vnet-address-space ]
}