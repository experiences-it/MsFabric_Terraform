data "azurerm_client_config" "rmclient" {}
data "azuread_user" "user" {
  object_id = data.azurerm_client_config.rmclient.object_id
}

resource "azurerm_resource_group" "rg-fabric" {
  name     = "rg-nicedata-fabricterraform"
  location = "France central"
}
resource "azapi_resource" "fc-fabric" {
  type                      = "Microsoft.Fabric/capacities@2023-11-01"
  name                      = "fcnicedatafabricterraform"
  parent_id                 = azurerm_resource_group.rg-fabric.id
  location                  = "France central"


  body = {
    sku = {
      name = "F2"
      tier = "Fabric"
    }
    properties = {
      administration = {
        members = [
          data.azuread_user.user.user_principal_name
        ]
      }
    }
  }
}