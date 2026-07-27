vnets = {
  vnet1 = {
    name                = "luckyvnet1"
    location            = "eastus"
    resource_group_name = "devrg"
    address_space       = ["10.0.0.0/16"]
  }
  vnet2 = {
    name                = "luckyvnet2"
    location            = "eastus"
    resource_group_name = "devrg"
    address_space       = ["10.143.0.0/16"]
  }
}
