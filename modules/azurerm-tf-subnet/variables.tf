###############
## Variables ##
###############

variable "rgname" {
  type        = string
  sensitive   = false
  description = "Name of resource group to deploy the resource to"
}

variable "region" {
  description = "Region to deploy the resources to"
  nullable    = false
  default     = "northeurope"
  type        = string
}

variable "app-name" {
  description = "application basename"
  nullable = false
  sensitive = false
  type = string
}

variable "vnet-name" {
  description = "vNet name to create the subnet into"
  nullable = false
  sensitive = false
  type = string
}

variable "snet-address-prefix" {
  description = "Address prefix for the created subnet (must be part of the address range of the vnet)"
  nullable = false
  sensitive = false
  type = list(string)
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
