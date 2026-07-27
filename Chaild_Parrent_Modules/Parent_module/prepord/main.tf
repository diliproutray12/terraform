module "resourcegroup" {
  source         = "../../Chaild_module/1-azurerm_Resource_group"
  resource_group = var.resource_group
}
module "virtualnetwork" {
  depends_on      = [module.resourcegroup]
  source          = "../../Chaild_module/2-azurerm_Virtual_network"
  virtual_network = var.virtual_network

}
module "subnett" {
  depends_on = [module.virtualnetwork]
  source     = "../../Chaild_module/3-azurerm_subnet"
  subnet     = var.subnets
}
module "pubip" {
  depends_on = [module.resourcegroup]
  source     = "../../Chaild_module/4-azurerm_public_ip"
  public-ip  = var.public-ip
}
module "netnic" {
  depends_on  = [module.pubip, module.subnett]
  source      = "../../Chaild_module/5-azurerm_network_interface"
  network-nic = var.network-nic
}
module "vmm" {
  depends_on = [ module.netnic ]
  source = "../../Chaild_module/6-azurerm_Virtual_machine"
  vmachine = var.vmachine

  
}