/**
* Configuration of the needed TF provider and their versions
*/

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">=4.9.0"
    }
  }
}

# provider "azurerm" {
#   # Configuration options
# }