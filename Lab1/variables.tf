provider "azurerm" {
  features {}
}

variable "application_name" {
  description = "The name of the application."
  type        = string
}

variable "environment_name" {
  type = string

}

locals {
  resource_group_name = "${var.application_name}-${var.environment_name}-rg"
}

resource "azurerm_resource_group" "main" {
  name     = local.resource_group_name
  location = "East US"
}
// terraform apply -var "application_name=grafsblog" -var "environment_name=dev"
