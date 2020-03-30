data "terraform_remote_state" "appinsights" {
  backend = "azurerm"

  config = {
    key ="memberinfoappinisghts.tfstate"
    container_name="memberinfoappinisghts"
    storage_account_name="boottesttfstate"
    resource_group_name="demotfstate-rg"
    }
  }


