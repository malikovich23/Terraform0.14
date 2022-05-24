provider "azurerm" {
  features {}
  version         = "3.7.0"
  subscription_id = "54873e69-ad9d-45e1-bc5d-5638cd289ecb"
  client_id       = "cf07f4d1-fa42-4268-97bf-8fff16318abf"
  client_secret   = "Krk8Q~4kl5ICssCWPlsmrIcv1GmfJriuyqsVNb8X"
  tenant_id       = "f17f7e35-8484-4e4b-bf2c-627b9cdeac63"
}


resource "azurerm_resource_group" "dev" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}