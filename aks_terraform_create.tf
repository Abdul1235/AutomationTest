# data "azurerm_resource_group" "main" {
#   name = var.resource_group_name
# }

provider "azurerm" {
  # We recommend pinning to the specific version of the Azure Provider you're using
  # since new versions are released frequently
  version = "=1.38.0"

  # More information on the authentication methods supported by
  # the AzureRM Provider can be found here:
  # http://terraform.io/docs/providers/azurerm/index.html

  subscription_id = "3e7223da-8235-40b2-97d1-82e996b899b7"
  client_id       = "16a99988-88a0-4344-967c-939f2f309cc3"
  client_secret   = "4YsmIBh/9dkGSq]Tf0rqwN@DCBJuHl/8"
  tenant_id       = "db8e2f82-8a37-4c09-b7de-ed06547b5a20"
}
resource "azurerm_resource_group" "main" {
    name     = "${var.resource_group_name}"
    location = "${var.location}"
}



