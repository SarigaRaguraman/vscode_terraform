#Resorce Group Variables
variable "rsname" {}
variable "rslocation" {}

#Vnet Variables
variable "vnetname" {}
variable "add-space" {
type = list(string)
}
variable "sub-name" {
}
variable "sub-add-space" {
}

#Vm Variables
variable "nicname" {
    type = "list"
}
variable "vmname" {
    type = "list"
}
variable "vmsize" {}
variable "vm-osdisk" {}
    /*type = "list"
}*/
variable "publicipname" {}


