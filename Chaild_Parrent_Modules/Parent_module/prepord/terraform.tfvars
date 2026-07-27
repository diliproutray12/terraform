resource_group = {
  rg1 = {
    name     = "niki-rg"
    location = "koreacentral"
  }
}
virtual_network = {
  vnets = {
    name          = "big-vnet"
    location      = "koreacentral"
    rgname        = "niki-rg"
    address_space = ["10.0.0.0/16"]
  }
}
subnets = {
  snet1 = {
    name             = "netflix_subnet"
    rgname           = "niki-rg"
    vnet             = "big-vnet"
    address_prefixes = ["10.0.0.0/24"]
  }
}

public-ip = {
  pip1 = {
    pip_name          = "pip_vm1"
    location          = "koreacentral"
    rgname            = "niki-rg"
    allocation_method = "Static"
  }
  pip2 = {
    pip_name          = "pip_vm2"
    location          = "koreacentral"
    rgname            = "niki-rg"
    allocation_method = "Static"
  }
}
network-nic = {
  nic1 = {
    nic_name    = "nic_vm1"
    location    = "koreacentral"
    rgname      = "niki-rg"
    subnet_name = "netflix_subnet"
    pip_name    = "pip_vm1"
    vnet_name   = "big-vnet"
  }
  nic2 = {
    nic_name    = "nic_vm2"
    location    = "koreacentral"
    rgname      = "niki-rg"
    subnet_name = "netflix_subnet"
    pip_name    = "pip_vm2"
    vnet_name   = "big-vnet"
  }
}
vmachine = {
  vm1 = {
    vm_name = "netflix-vm"
    location = "koreacentral"
    rgname = "niki-rg"
    nic_name    = "nic_vm1"
    vm_size = "Standard_D2s_v3"
    admin_username = "Devopsinsider"
    admin_password = "Devopsinsider@12345"
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
  vm2 = {
    vm_name = "hotstar-vm"
    location = "koreacentral"
    rgname = "niki-rg"
    nic_name    = "nic_vm2"
    vm_size = "Standard_D2s_v3"
    admin_username = "Devopsinsider"
    admin_password = "Devopsinsider@12345"
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}