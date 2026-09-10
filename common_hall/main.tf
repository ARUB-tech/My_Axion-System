module "rg" {
  source = "../azurerm_resource_group"
  rgs= var.resource_groups
#      rgs= {
#    rg1 = {
#     rg_name= "rg_arub"
#     rg_location ="west us"
#        } 
#            rg2 = {
#     rg_name= "rg_arub"
#     rg_location ="west us"
#        } 
    
#   }
}
module "stg" {
  depends_on = [ module.rg ]
    source = "../azurerm_storage_account"
    stgs= var.storage_account
#    stg = {
#     sa1 = {
#       sa_name                   = "axion121"
#       sa_rg_name                = "rg_arub"
#       sa_location               = "East US"
#       account_tier              = "Standard"
#       saccount_replication_type = "GRS"
#     }
#     sa2 = {
#       sa_name                   = "axion1212"
#       sa_rg_name                = "rg_arub1"
#       sa_location               = "East US"
#       account_tier              = "Standard"
#       saccount_replication_type = "GRS"
#     }
#   }

}
