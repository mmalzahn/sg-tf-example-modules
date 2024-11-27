/**
* # Main Title
*
* Here should be a description of the Module and its function
*
*/

resource "random_string" "sa_postfix" {
  length = 3
  lower = true
}

resource "azurerm_storage_account" "sa_main" {
  resource_group_name = var.rgname
  https_traffic_only_enabled = var.https-traffic-only-enabled
  location = var.region
  name = "sa${var.app-name}${random_string.sa_postfix.result}"
  account_tier = "Standard"
  account_replication_type = "GRS"
}