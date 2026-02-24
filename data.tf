data "azurerm_virtual_network" "existing_vnet" {
    name = "dockervm-vnet"
    resource_group_name = "omsrg"
}