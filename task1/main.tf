provider "azurerm" {
  features {}
}

# Create a resource group if it doesn't exist
resource "azurerm_resource_group" "rg" {
  name     = "absarresg"
  location = "East US"

  tags = {
    environment = "salman"
  }
}
