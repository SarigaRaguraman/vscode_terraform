resource "azurerm_virtual_network" "main" {
  name                = var.vnetname
  address_space       ="${var.add-space}"

location = "${var.rslocation}"
 resource_group_name = "${var.rsname}"
}

resource "azurerm_subnet" "internal" {
  name                 = "${var.sub-name}"
  resource_group_name  = "${var.rsname}"
  virtual_network_name = "${azurerm_virtual_network.main.name}"
  address_prefix       = "${var.sub-add-space}"
}


