resource "azurerm_mssql_server" "mssql_server" {
  for_each                     = var.sqlservers
  name                         = each.value.sql_server_name
  resource_group_name          = each.value.resource_group_name
  location                     = each.value.location
  version                      = "12.0"
  administrator_login          = each.value.sql_admin_name
  administrator_login_password = each.value.sql_admin_password
}



output "sql_ids" {
  value = { for k, v in azurerm_mssql_server.mssql_server : k => v.id }

}
