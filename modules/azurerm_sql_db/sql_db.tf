resource "azurerm_mssql_database" "mssql_db" {
  for_each     = var.sql_dbs
  name         = each.value.name
  server_id    = data.azurerm_mssql_server.data_sql_server[each.key].id
  collation    = "SQL_Latin1_General_CP1_CI_AS"
  license_type = "LicenseIncluded"
  max_size_gb  = 2
  sku_name     = "S0"
  enclave_type = "VBS"
}


data "azurerm_mssql_server" "data_sql_server" {
  for_each            = var.sql_dbs
  name                = each.value.sql_server_id
  resource_group_name = each.value.resource_group_name
}


