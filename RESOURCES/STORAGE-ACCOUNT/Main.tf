


resource "azurerm_storage_account" "storage-account" {

    for_each = var.storage_account

  name                     = each.value.stg_name
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

}