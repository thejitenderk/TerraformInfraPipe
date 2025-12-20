terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.40.0"
    }
  }
}


provider "azurerm" {
  features {}
  subscription_id = "11cafab2-4ec1-448b-892f-ffc991c70e1c"
  client_secret   = "_Kb8Q~edWrq42YM9JcT9P.X.oFjJEmqGCPuwFdfB"
  client_id       = "76d8ec69-fb35-464a-ab11-ae9baf701795"
  tenant_id       = "265d316c-e104-4886-a2d5-e3b5367dad08"
}
