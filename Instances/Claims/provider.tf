provider "azurerm" {
  features{}

}

terraform {
  backend "azurerm" {
    key ="claims.tfstate"
    container_name="claimstfstate"
    storage_account_name="boottesttfstate"
    resource_group_name="demotfstate-rg"

  }
}