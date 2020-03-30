
module "app_insights" {
  source = "../../Modules/AppInsights"
  product_name = var.product_name
}



module "az_function" {
  source = "../../Modules/AzureFunction"
  product_name = var.product_name
  appinsights_key = module.app_insights.instrumentation_key
}

