provider "azurerm" {
  features {}
}

data "azurerm_key_vault_secret" "networkinterfacename" {
   name         = "networkinterfacename"
   key_vault_id = "/subscriptions/23fcce43-2d2f-4071-9e69-fdb25386438a/resourceGroups/firstresourcegroupfrompipeline/providers/Microsoft.KeyVault/vaults/vmsecretspipeline"
 }

data "azurerm_key_vault_secret" "networksecuritygroupname" {
   name         = "networksecuritygroupname"
   key_vault_id = "/subscriptions/23fcce43-2d2f-4071-9e69-fdb25386438a/resourceGroups/firstresourcegroupfrompipeline/providers/Microsoft.KeyVault/vaults/vmsecretspipeline"
 }
 
 data "azurerm_key_vault_secret" "publicipname" {
   name         = "publicipname"
   key_vault_id = "/subscriptions/23fcce43-2d2f-4071-9e69-fdb25386438a/resourceGroups/firstresourcegroupfrompipeline/providers/Microsoft.KeyVault/vaults/vmsecretspipeline"
 }
 
 data "azurerm_key_vault_secret" "resourcegrouplocation" {
   name         = "resourcegrouplocation"
   key_vault_id = "/subscriptions/23fcce43-2d2f-4071-9e69-fdb25386438a/resourceGroups/firstresourcegroupfrompipeline/providers/Microsoft.KeyVault/vaults/vmsecretspipeline"
 }
 
 data "azurerm_key_vault_secret" "resourcegroupname" {
   name         = "resourcegroupname"
   key_vault_id = "/subscriptions/23fcce43-2d2f-4071-9e69-fdb25386438a/resourceGroups/firstresourcegroupfrompipeline/providers/Microsoft.KeyVault/vaults/vmsecretspipeline"
 }
 
 data "azurerm_key_vault_secret" "subnetname" {
   name         = "subnetname"
   key_vault_id = "/subscriptions/23fcce43-2d2f-4071-9e69-fdb25386438a/resourceGroups/firstresourcegroupfrompipeline/providers/Microsoft.KeyVault/vaults/vmsecretspipeline"
 }
 
 data "azurerm_key_vault_secret" "virtualnetworkname" {
   name         = "virtualnetworkname"
   key_vault_id = "/subscriptions/23fcce43-2d2f-4071-9e69-fdb25386438a/resourceGroups/firstresourcegroupfrompipeline/providers/Microsoft.KeyVault/vaults/vmsecretspipeline"
 }
 
  data "azurerm_key_vault_secret" "linuxvirtualmachinename" {
   name         = "linuxvirtualmachinename"
   key_vault_id = "/subscriptions/23fcce43-2d2f-4071-9e69-fdb25386438a/resourceGroups/firstresourcegroupfrompipeline/providers/Microsoft.KeyVault/vaults/vmsecretspipeline"
 }

# Create a resource group if it doesn't exist
resource "azurerm_resource_group" "rg" {
  name     = data.azurerm_key_vault_secret.resourcegroupname.value
  location = data.azurerm_key_vault_secret.resourcegrouplocation.value

  tags = {
    environment = "salman"
  }
}
