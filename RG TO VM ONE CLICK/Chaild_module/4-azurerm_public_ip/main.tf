resource "azurerm_public_ip" "publicip" {
    for_each = var.public-ip
  name = each.value.pip_name
  location = each.value.location
  resource_group_name = each.value.rgname
  allocation_method = each.value. allocation_method
}