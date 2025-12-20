variable "sqlservers" {
  type = map(object({
    sql_server_name     = string
    sql_admin_name      = string
    sql_admin_password  = string
    resource_group_name = string
    location            = string
  }))
}
