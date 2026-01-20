module "resource_groups" {
  source          = "../Module/azurerm_networking"
  resource_groups = var.resource_groups
}