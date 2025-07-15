resource "azurerm_network_interface_security_group_association" "nicnsgass" {
  for_each                  = var.nicnsgass
  network_interface_id      = data.azurerm_network_interface.nic[each.key].id
  network_security_group_id = data.azurerm_network_security_group.nsgdata[each.key].id
}

