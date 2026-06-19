subnets = {
    snet1 = {
name                 = "subnet_frontend"
  resource_group_name  = "devrg"
  virtual_network_name = "frontendvnt"
  address_prefixes     = ["10.0.1.0/24"]
    }
    snet2 = {
name                 = "subnet_backend"
  resource_group_name  = "devrg"
  virtual_network_name = "frontendvnt"
  address_prefixes     = ["10.0.2.0/24"]
    }
    snet3 = {
name                 = "subnet_detabase"
  resource_group_name  = "devrg"
  virtual_network_name = "frontendvnt"
  address_prefixes     = ["10.0.3.0/24"]
    }
}
