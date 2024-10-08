# Create a resource group.
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group
resource "azurerm_resource_group" "rg-fabric" {
  name     = "rg-nicedata-fabricterraform"
  location = "France central"
}