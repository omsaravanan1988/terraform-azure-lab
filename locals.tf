locals {
    environment = "dev"
    project = "tflab"
    location ="Central India "
    rg_name = "${local.project}-${local.environment}-rg"
    storage_name = "${local.project}${local.environment}sa123"
    #envs =["dev","uat","prod"]
    envs = {
    dev  = "centralindia"
    #uat  = "eastus"
    #prod = "westeurope"
  }
}