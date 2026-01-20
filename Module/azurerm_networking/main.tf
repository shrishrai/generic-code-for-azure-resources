resource "azurerm_resource_group" "resource_groups" {
    for_each = var.resource_groups
  name     = each.value.name
  location = each.value.location
}


# resource "azurerm_virtual_network" "Vnet" {
#     for_each = var.Vnets

#   name                = each.value.name
#   location            = each.value.location
#   resource_group_name = each.value.resource_group_name
#   address_space       = each.value.address_space
#   dns_servers         = each.value.dns_servers

#     dynamic "subnet" {
#         for_each = each.value.subnets
#         content {
#         name             = subnet.value.name
#         address_prefixes = subnet.value.address_prefixes
#         }
#     }
#   tags = each.value.tags
# }

