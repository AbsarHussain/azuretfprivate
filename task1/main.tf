provider "azurerm" {
  features {}
}

# Create a resource group if it doesn't exist
resource "azurerm_resource_group" "rg" {
  name     = $(vmname)
  location = var.resource_group_location

  tags = {
    environment = "production"
  }
}
