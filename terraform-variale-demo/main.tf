provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "demo-rg" {
  name     = "${var.resource_group}"
  location = "${var.location}"
}

resource "azurerm_virtual_network" "demo-vnet" {
  name                = "${var.vnet}"
  location            = azurerm_resource_group.demo-rg.location
  resource_group_name = azurerm_resource_group.demo-rg.name
  address_space       = ["${var.address_space}"]

}
resource "azurerm_subnet" "demo-sb" {
  name                 = "${var.subnet[count.index]}"
  resource_group_name  = azurerm_resource_group.demo-rg.name
  virtual_network_name = azurerm_virtual_network.demo-vnet.name
  address_prefixes     = ["${var.address_prefixes[count.index]}"]
  count                = "${length(var.subnet)}"
}
