mock_provider "azurerm" {}

variables {
  app-name = "hans"
  region = "northeurope"
}

run "setup" {
  command = plan
  module {
    source = "../azurerm-tf-resourceGroup"
  }
}

run "test_https" {
  command = plan
  variables {
    rgname   = run.setup.resource_group_name
    app-name = var.app-name
  }
  assert {
    condition     = azurerm_storage_account.sa_main.https_traffic_only_enabled == true
    error_message = "Resource Group name does not match the expectation"
  }
}

run "test_account_tier" {
  command = plan
  variables {
    rgname   = run.setup.resource_group_name
    app-name = var.app-name
  }
  assert {
    condition     = azurerm_storage_account.sa_main.account_tier == "Standard"
    error_message = "Resource Group name does not match the expectation"
  }
}

run "test_repltype" {
  command = plan
  variables {
    rgname   = run.setup.resource_group_name
    app-name = var.app-name
  }
  assert {
    condition     = azurerm_storage_account.sa_main.account_replication_type == "GRS"
    error_message = "Resource Group name does not match the expectation"
  }
}
run "test_location" {
  command = plan
  variables {
    rgname   = run.setup.resource_group_name
    app-name = var.app-name
    region = var.region
  }
  assert {
    condition     = azurerm_storage_account.sa_main.location == var.region
    error_message = "Resource Group name does not match the expectation"
  }
}
