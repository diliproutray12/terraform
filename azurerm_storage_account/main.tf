resource "azurerm_storage_account" "storage" {
  for_each = var.routraystorage
  name =each.value.name
  location = each.value.location
  resource_group_name = each.value.resource
  account_tier = each.value.atier
  account_replication_type = each.value.art
}