output "rg_names" {
  value = { for k, v in azurerm_resource_group.resource_groups : k => v.name }
}

output "rg_locations" {
  value = { for k, v in azurerm_resource_group.resource_groups : k => v.location }
}
