###############
## Variables ##
###############

variable "appname" {
  type = string
  sensitive = false
  description = "Name of the Application"
  validation {
    condition = length(var.appname) > 2 && length(var.appname) <= 8
    error_message = "The Applicationname has to be between 3-8 characters in length"
  }
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
