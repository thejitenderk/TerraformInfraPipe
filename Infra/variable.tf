variable "rg_name" {
 description = "values for resource group names and locations"
}

variable "vnet_name" {
  description = "values for virtual network names, resource group names, and address spaces"
}

variable "subnet_name" {
    description = "values for subnet names, locations, and address prefixes"
}

variable "pip" {}

variable "lvmms" {}

variable "server_name" {}

variable "sqldbs" {}

variable "nsg" {

}

variable "nicnsgass" {}
