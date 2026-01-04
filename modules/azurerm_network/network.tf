resource "azurerm_virtual_network" "vnets" {
  for_each = var.virtual_networks

  name                = each.key
  address_space       = each.value.address_space
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  dynamic "subnet" {
    for_each = lookup(each.value, "subnets", {})
    content {
      name             = subnet.key
      address_prefixes = subnet.value.address_prefixes
    }
  }
}
