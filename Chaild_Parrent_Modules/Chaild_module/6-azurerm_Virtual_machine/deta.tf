data "azurerm_network_interface" "nic" {
    for_each = var.vmachine
  name                = each.value.nic_name
  resource_group_name = each.value.rgname
}