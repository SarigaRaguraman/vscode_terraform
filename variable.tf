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
/*variable "nicname" {
    type = "list"
}
variable "vmname" {
    type = "list"
}

variable "vm-osdisk" {
    type = "list"
} */
variable "publicipname" {}
variable "vmsize" {}
variable "vmname_value"{}
variable "vmnicname_value"{}



