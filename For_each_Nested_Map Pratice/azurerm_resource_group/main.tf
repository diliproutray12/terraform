resource "azurerm_resource_group" "rgblock" {
    for_each = var.diliprg
    name = each.value.name
    location = each.value.location
}