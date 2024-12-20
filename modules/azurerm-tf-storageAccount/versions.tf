/**
* Provider and Versions
*   - AzureRM >= 4.9.0
*   - Random >= 3.6.3
**/

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.9.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.6.3"
    }
  }
}

