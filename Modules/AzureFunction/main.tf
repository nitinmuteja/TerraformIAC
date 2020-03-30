
resource "azurerm_resource_group" "example" {
  name     = "${var.product_name}-rg"
  location = "westus2"
}

resource "azurerm_storage_account" "example" {
  name                     = "${var.product_name}sa"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_app_service_plan" "example" {
  name                = "${var.product_name}-plan"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_function_app" "example" {
  name                      = "${var.product_name}-functions"
  location                  = azurerm_resource_group.example.location
  resource_group_name       = azurerm_resource_group.example.name
  app_service_plan_id       = azurerm_app_service_plan.example.id
  storage_connection_string = azurerm_storage_account.example.primary_connection_string
  app_settings ={
    APP_INSIGHTS_KEY=var.appinsights_key
  }
}