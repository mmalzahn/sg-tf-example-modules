/**
* # Main Title
*
* Here should be a description of the Module and its function
*
*/

resource "azurerm_resource_group" "test_rg" {
  location = var.region
  name = "rg-${var.app-name}"
}