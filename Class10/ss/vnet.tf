
resource "azurerm_virtual_network" "vnet1" {
  name                = var.vnet_name
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = ["${var.address_space}"]
  tags                = var.tags
}
