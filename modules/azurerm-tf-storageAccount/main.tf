/**
* # Main Title
*
* Here should be a description of the Module and its function
*
*/

resource "azurerm_storage_account" "sa_main" {
  resource_group_name = var.rgname
  location = var.region
  name = "sawefufiu3ii"
  account_tier = "Standard"
  account_replication_type = "GRS"
}