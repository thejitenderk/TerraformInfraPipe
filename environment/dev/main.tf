module "rgs" {
  source          = "../../modules/azurerm_rg"
  resource_groups = var.resource_groups
}

module "networks" {
  source = "../../modules/azurerm_network"
  virtual_networks = { for k, v in var.virtual_networks : k => merge(v, {
    resource_group_name = module.rgs.rg_names[v.resource_group_name]
    location            = module.rgs.rg_locations[v.resource_group_name]
  }) }
}

module "computes" {
  source     = "../../modules/azurerm_compute"
  depends_on = [module.networks, module.rgs]
  lvms =  { for k, v in var.lvms : k => merge(v, {
    resource_group_name = module.rgs.rg_names[v.resource_group_name]
    location            = module.rgs.rg_locations[v.resource_group_name]
    size                = coalesce(v.size, "Standard_B2s")
  }) }
}

# module "sql_servers" {
#   source = "../../modules/azurerm_sql"
#   sqlservers = { for k, v in var.sqlservers : k => merge(v, {
#     resource_group_name = module.rgs[k].rg_names
#     location            = module.rgs[k].rg_locations
#   }) }
# }

# module "sqldbs" {
#   source = "../../modules/azurerm_sql_db"
#   sql_dbs = { for k, v in var.sql_dbs : k => merge(v, {
#     resource_group_name = module.rgs[k].rg_names
#     sql_server_id       = module.sql_servers[k].sql_ids
#   }) }
# }
