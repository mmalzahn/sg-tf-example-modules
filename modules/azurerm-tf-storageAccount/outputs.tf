#############
## Outputs ##
#############

output "outputresource" {
  value = azurerm_storage_account.sa_main
  sensitive = true
}

## Example:

# output "outputname" {
#     value = var.varname
#     sensitive = false
#     description = "a meaningfull description of the output"
# }