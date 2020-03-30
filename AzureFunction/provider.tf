provider "azurerm" {
  features{}

}

terraform {
  backend "azurerm" {
    key ="memberinfo.tfstate"
    container_name="webapptfstate"
    storage_account_name="boottesttfstate"
    resource_group_name="demotfstate-rg"

  }
}