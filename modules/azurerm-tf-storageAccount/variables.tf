###############
## Variables ##
###############

variable "rgname" {
  type = string
  sensitive = false
  description = "Name of resource group to deploy the resource to"
}

variable "region" {
    description = "Region to deploy the resources to"
    nullable = false
    default = "northeurope"
  type = string
}

# variable "varvalidated" {
#   type = number
#   sensitive = false
#   default = 5
#   description = "a meaningfull description of the variable"
#   validation {
#     condition = var.varvalidated > 1 && var.varvalidated < 10
#     error_message = "the value of this variable is out of range of 2-10"
#   }
# }