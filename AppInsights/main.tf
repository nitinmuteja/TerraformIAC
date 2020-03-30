resource "azurerm_resource_group" "example" {
  name     = "${var.product_name}insights-rg"
  location = "westus2"
}

resource "azurerm_application_insights" "example" {
  name                = "${var.product_name}-appinsights"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  application_type    = "web"
}

