variable "resource_groups" {
  description = "A map of resource groups to create"
  type = map(object({
    name     = string
    location = string
  }))
}

variable "virtual_networks" {
  type = map(object({
    name                = optional(string)
    address_space       = list(string)
    location            = optional(string)
    resource_group_name = optional(string)
    subnets = optional(map(object({
      name             = optional(string)
      address_prefixes = list(string)
    })))
  }))
}

# variable "sqlservers" {
#   type = map(object({
#     sql_server_name     = string
#     sql_admin_name      = string
#     sql_admin_password  = string
#     resource_group_name = optional(string)
#     location            = optional(string)
#   }))
# }

# variable "sql_dbs" {
#   type = map(object({
#     name                = string
#     sql_server_id       = optional(string)
#     resource_group_name = optional(string)
#   }))
# }

variable "lvms" {
  type = map(object({
    name                = optional(string)
    resource_group_name = optional(string)
    location            = optional(string)
    size                = optional(string)
    admin_username      = string
    admin_password      = string
    nic_name            = string
    subnet_id           = string
    vnet_name           = string
  }))
}
