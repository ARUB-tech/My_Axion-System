resource "azurerm_storage_account" "stg" {
    for_each =var.stgs
  
    name= each.value.sa_name
    resource_group_name = each.value.sa_rg_name
    location = each.value.sa_location
    account_tier= each.value.account_tier
    account_replication_type= each.value.account_replication_type

}
# variable "stg" {
  
# }

     
    
