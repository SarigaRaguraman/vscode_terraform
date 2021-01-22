rsname = "rsgroup"
rslocation = "Eastus"
vnetname = "vnet100"
add-space = ["10.0.0.0/16"]
sub-name = "vnet100-subnet"
sub-add-space = "10.0.1.0/24"
/*nicname = ["nicname1","nicname2"]
vmname = ["vm1","vm2",]

vm-osdisk = ["osdisk1","osdisk2"] */
publicipname = "test-pip"
vmsize = "Standard_B1s"
vmname_value= {
    A = {
        vmname = "vm1"
        vm-osdisk = "osdisk1"
    },
    B = {
        vmname = "vm2"
        vm-osdisk = "osdisk2"
    }
}

vmnicname_value= {
    A = {
        vmnicname = "nicname1"
    },
    B = {
        vmnicname = "nicname2"
    }
}


