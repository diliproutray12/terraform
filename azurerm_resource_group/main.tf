resource "azurerm_resource_group" "rgblock" {
  for_each = var.routray 
  name = each.key
  location = each.value
}