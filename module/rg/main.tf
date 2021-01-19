resource "azurerm_resource_group" "main" {
  name     ="${var.rsname}"
  location ="${var.rslocation}"
}
#name = var.rgdetails["name"]
#location = var.rgdetails["location"]

#rgdetails =[
  #rg1 = {
    #name =rg1
    #loction = eastus

  #}
  #rg2 = {
   # name =rg2
    #location = westus
  #}
#]

