variable "sql_dbs" {
  type = map(object({
    name                = string
    sql_server_id       = string
    resource_group_name = string
  }))
}