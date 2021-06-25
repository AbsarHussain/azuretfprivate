provider "azurerm" {
  features {}
}


# Create a resource group if it doesn't exist
resource "azurerm_resource_group" "rg" {
  name     = data.azurerm_key_vault_secret.resourcegroupname.value
  location = data.azurerm_key_vault_secret.resourcegrouplocation.value

  tags = {
    environment = "salman"
  }
}
