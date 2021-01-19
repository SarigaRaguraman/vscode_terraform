resource "azurerm_network_interface" "vmnic" {
  name                = "${var.nicname[count.index]}"
  count               = "${length(var.nicname)}"
  location            = "${var.rslocation}"
  resource_group_name = "${var.rsname}"

  ip_configuration {
   name                          = "vmip"
   subnet_id                     = "${var.subnet_id}"
   private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_public_ip" "test" {
  name                    = "${var.publicipname}"
 location                = "${var.rslocation}"
 resource_group_name     = "${var.rsname}"
  allocation_method       = "Dynamic"
 }

resource "azurerm_virtual_machine" "vm" {
  name                  = "${var.vmname[count.index]}"
  count                 = "${length(var.vmname)}"
  location              = "${var.rslocation}"
  resource_group_name   = "${var.rsname}"
  network_interface_ids = ["${azurerm_network_interface.vmnic.*.id[count.index]}"]
  vm_size               = "${var.vmsize}"
  
  storage_image_reference {
    publisher = "RedHat"
    offer     = "RHEL"
    sku       = "7.7"
    version   = "latest"
  }

  storage_os_disk {
    name              = "${var.vm-osdisk[count.index]}"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "terra-rhel-01"
    admin_username = "azureadmin"
    admin_password = "Password@123"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
}