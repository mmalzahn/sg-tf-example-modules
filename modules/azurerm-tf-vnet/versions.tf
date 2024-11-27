/**
* Provider and Versions
*   - AzureRM >= 4.9.0
**/

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.9.0"
    }
  }
}
