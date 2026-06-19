subnets = {
  snet1 = {
    name                 = "frontend-subnet"
    resource_group_name  = "devrg"
    virtual_network_name = "luckyvnet1"
    address_prefixes     = ["10.0.1.0/24"]
  }
  snet2 = {
    name                 = "backend-subnet"
    resource_group_name  = "devrg"
    virtual_network_name = "luckyvnet2"
    address_prefixes     = ["10.143.1.0/24"]
  }
}
