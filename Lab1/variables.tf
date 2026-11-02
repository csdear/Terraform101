variable "application_name" {
  description = "The name of the application."
  type        = string
}

variable "environment_name" {
  type = string

}

variable "api_key" {
  type      = string
  sensitive = true
}

variable "instance_count" {
  type = number
}

variable "enabled" {
  type = bool
}

variable "regions" {
  type = list(string)
}

variable "region_instance_count" {
  type = map(any)
}

variable "sku_settings" {
  type = object({
    kind = string
    tier = string
  })
}

locals {
  resource_group_name = "${var.application_name}-${var.environment_name}-rg"
  anotherAppEnvRandom = "${var.application_name}-${var.environment_name}-${random_string.suffix.result}"
}

resource "azurerm_resource_group" "main" {
  name     = local.resource_group_name
  location = "East US"
}
// terraform apply -var "application_name=grafsblog" -var "environment_name=dev"
