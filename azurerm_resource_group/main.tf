resource "azurerm_resource_group" "rg" {
    for_each= var.rgs   // variable use
    # {
    #    rg1 = {
    # rg_name= "rg_arub"
    # rg_location ="west us"
    #    } 
    #        rg2 = {
    # rg_name= "rg_arub"
    # rg_location ="west us"
    #    } 
    # }
    name= each.value.rg_name
    location= each.value.rg_location


}