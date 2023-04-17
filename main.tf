terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

module "rg" {
  source = "./modules/resource-group"

  for_each = fileset("./variables", "*.json")

  name = jsondecode(file("./variables/${each.value}"))["name"]
  # todo: if abfrage
  location = jsondecode(file("./variables/${each.value}"))["location"]
}