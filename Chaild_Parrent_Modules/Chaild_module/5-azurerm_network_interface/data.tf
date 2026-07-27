data "azurerm_subnet" "snet" {
    for_each = var.network-nic
    name = each.value.subnet_name
    resource_group_name = each.value.rgname
    virtual_network_name = each.value.vnet_name
}
data "azurerm_public_ip" "publicip" {
  for_each = var.network-nic
  name = each.value.pip_name
  resource_group_name = each.value.rgname
}