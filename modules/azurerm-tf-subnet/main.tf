resource "azurerm_subnet" "snet" {
  name = "snet-${var.app-name}"
  resource_group_name = var.rgname
  virtual_network_name = var.vnet-name
  address_prefixes = var.snet-address-prefix
}