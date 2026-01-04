resource_groups = {
  "rg1" = {
    name     = "dev-rg1"
    location = "Central India"
  }
}

virtual_networks = {
  "dev-vnet1" = {
    address_space       = ["10.0.0.0/16"]
    resource_group_name = "rg1"
    subnets = {
      frontend-subnet = {
        address_prefixes = ["10.0.1.0/24"]
      }
      backend-subnet = {
        address_prefixes = ["10.0.2.0/24"]
      }
    }
  }
}

lvms = {
  "devvm1" = {
    admin_username      = ""
    admin_password      = ""
    nic_name            = "dev-vm1-nic"
    subnet_id           = "frontend-subnet"
    vnet_name           = "dev-vnet1"
    resource_group_name = "rg1"
  }
  "devvm2" = {
    admin_username      = ""
    admin_password      = ""
    nic_name            = "dev-vm2-nic"
    subnet_id           = "backend-subnet"
    vnet_name           = "dev-vnet1"
    resource_group_name = "rg1"
  }
}
