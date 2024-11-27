
run "validate_name_hans" {
  variables {
    app-name = "hans"
  }
  command = plan
  assert {
    condition     = azurerm_resource_group.test_rg.name == "rg-hans"
    error_message = "Resource Group name does not match the expectation"
  }
}

run "validate_name_testapp_plan" {
  variables {
    app-name = "testapp"
  }
  command = plan
  assert {
    condition     = azurerm_resource_group.test_rg.name == "rg-testapp"
    error_message = "Resource Group name does not match the expectation"
  }
  assert {
    condition     = azurerm_resource_group.test_rg.location == "northeurope"
    error_message = "Resource Group location does not match the expectation"
  }
}