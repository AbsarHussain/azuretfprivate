provider "azurerm" {
  features {}
}
data "azurerm_key_vault_secret" "example" {
  name         = "vmname"
  key_vault_id = "/subscriptions/23fcce43-2d2f-4071-9e69-fdb25386438a/resourceGroups/absarresg/providers/Microsoft.KeyVault/vaults/azurekeyvaultforpiplein"
}

output "secret_value"  {
  value = data.azurerm_key_vault_secret.example.value
  sensitive = true
}
# Create a resource group if it doesn't exist
resource "azurerm_resource_group" "rg" {
  name     = data.azurerm_key_vault_secret.example.value
  location = "East US"

  tags = {
    environment = "production"
  }
}
