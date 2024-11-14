#############
## Outputs ##
#############

output "outputresource" {
  value = azurerm_resource_group.test_rg
}



## Example:


# output "outputname" {
#     value = var.varname
#     sensitive = false
#     description = "a meaningfull description of the output"
# }