resource "azurerm_network_interface" "nicc" {
  for_each            = var.network-nic
  name                = each.value.nic_name
  location            = each.value.location
  resource_group_name = each.value.rgname
  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.snet[each.key].id
    public_ip_address_id          = data.azurerm_public_ip.publicip[each.key].id
    private_ip_address_allocation = "Dynamic"
  }


}
