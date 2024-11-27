
run "validate_name_testapp_apply" {
  variables {
    app-name = "testapp"
  }
  command = apply
  assert {
    condition     = azurerm_resource_group.test_rg.name == "rg-testapp"
    error_message = "Resource Group name does not match the expectation"
  }
  assert {
    condition     = azurerm_resource_group.test_rg.location == "northeurope"
    error_message = "Resource Group location does not match the expectation"
  }
  assert {
    condition     = azurerm_resource_group.test_rg.id == output.resource_group_id
    error_message = "Resource Group name does not match the expectation"
  }
}
