nicard = {
  nicfrontend = {
    name                = "nic1"
    location            = "eastus"
    resource_group_name = "devrg"

    ip_configuration = {
      name                          = "testnic"
      subnet_id                     = "/subscriptions/a52476ea-ef6a-458e-b856-0939181b2c79/resourceGroups/devrg/providers/Microsoft.Network/virtualNetworks/luckyvnet1/subnets/frontend-subnet"
      private_ip_address_allocation = "Dynamic"
    }
  }
  nicbackend = {
    name                = "nic2"
    location            = "eastus"
    resource_group_name = "devrg"

    ip_configuration = {
      name                          = "testnic"
      subnet_id                     = "/subscriptions/a52476ea-ef6a-458e-b856-0939181b2c79/resourceGroups/devrg/providers/Microsoft.Network/virtualNetworks/luckyvnet2/subnets/backend-subnet"
      private_ip_address_allocation = "Dynamic"
    }
  }
}



