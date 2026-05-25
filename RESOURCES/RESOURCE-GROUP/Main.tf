
resource "azurerm_resource_group" "Resource-Group" {

for_each = var.resource-group
    name = each.value.rg_name
    location = each.value.location

}