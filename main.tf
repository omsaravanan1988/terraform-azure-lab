provider "azurerm" {
    features{}
}
resource "azurerm_resource_group" "rg" {
  name     = local.rg_name
  location = local.location
}
resource "azurerm_storage_account" "env_sa" {
  for_each = tomap(local.envs)
  name                     = "tflab${each.key}sa123"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = each.value
  account_tier              = "Standard"
  account_replication_type  = "LRS"
}