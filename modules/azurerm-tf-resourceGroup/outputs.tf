#############
## Outputs ##
#############

output "outputresource" {
  value = azurerm_resource_group.test_rg
}

output "resource_group_name" {
  value = azurerm_resource_group.test_rg.name
}

output "resource_group_id" {
  value = azurerm_resource_group.test_rg.id
}

output "resource_group_location" {
  value = azurerm_resource_group.test_rg.location
}


## Example:

# output "outputname" {
#     value = var.varname
#     sensitive = false
#     description = "a meaningfull description of the output"
# }