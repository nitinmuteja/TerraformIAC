provider "azurerm" {
  features{}

}

terraform {
  backend "azurerm" {
    key ="memberinfoappinisghts.tfstate"
    container_name="memberinfoappinisghts"
    storage_account_name="boottesttfstate"
    resource_group_name="demotfstate-rg"

  }
}