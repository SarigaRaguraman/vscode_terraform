provider "azurerm"{
    features {}
}
module "rsgroup" {
 source = "./module/rg"
 rsname = "${var.rsname}"
 rslocation = "${var.rslocation}"
}

module "vnet" {
 source = "./module/vnet"
 vnetname = "${var.vnetname}"
 add-space = "${var.add-space}"
 sub-name = "${var.sub-name}"
 sub-add-space = "${var.sub-add-space}"
 rsname = "${module.rsgroup.mod_rg}"
 rslocation = "${module.rsgroup.mod1_rg}"
}
