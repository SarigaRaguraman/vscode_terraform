provider "azurerm"{
    features {}
}
module "rsgroup" {
 source = "./module/rg"
 rsname = "${var.rsname}"
 rslocation = "${var.rslocation}"
}

module "childvnet" {
 source = "./module/vnet"
 vnetname = "${var.vnetname}"
 add-space = "${var.add-space}"
 sub-name = "${var.sub-name}"
 sub-add-space = "${var.sub-add-space}"
 #subnet_id = "${module.vnet.op}"
 rsname = "${module.rsgroup.mod_rg}"
 rslocation = "${module.rsgroup.mod1_rg}"
}

module "vm" {
 source = "./module/vm"
 nicname = "${var.nicname}"
 vmname = "${var.vmname}"
 vmsize = "${var.vmsize}"
 vm-osdisk = "${var.vm-osdisk}"
 publicipname = "${var.publicipname}"
 subnet_id = "${module.childvnet.op}"
 rsname = "${module.rsgroup.mod_rg}"
 rslocation = "${module.rsgroup.mod1_rg}"
 #subnet_id = "${module.vnet.op}"
 #rsname = "${var.rsname}"
 #rslocation = "${var.rslocation}" 
}

