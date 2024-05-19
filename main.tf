module "naming" {
  source  = "Azure/naming/azurerm"
  suffix = ["Demo"]
}
resource "azurerm_resource_group" "example" {
  name     = module.naming.resource_group.name
  location = var.location
}
