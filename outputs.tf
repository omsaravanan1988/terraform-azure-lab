output "storage_account_id" {
    #value = azurerm_storage_account.sa.id
    value = {
    for k, v in azurerm_storage_account.env_sa : k => v.id
  }
}
output "storage_account_name" {
    #value = azurerm_storage_account.sa.name
    value = {
    for k, v in azurerm_storage_account.env_sa : k => v.name
  }
}
output "vnet_id"{
    value = data.azurerm_virtual_network.existing_vnet.id
}
output "vnet_address_space" {
  value = data.azurerm_virtual_network.existing_vnet.address_space
}