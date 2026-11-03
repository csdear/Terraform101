variable "application_name" {
  description = "The name of the application."
  type        = string

  validation {
    condition     = length(var.application_name) > 0
    error_message = "The application name must not be empty."
  }
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

  validation {
    condition     = var.instance_count >= local.min_nodes && var.instance_count <= local.max_nodes && var.instance_count % 2 != 0
    error_message = "Must be between 5 and 9 and never even!"
    // condition     = var.intance_count > 1 && var.instance_count < 10
    // error_message = "Must be between 1 and 10"
  }
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



resource "azurerm_resource_group" "main" {
  name     = local.resource_group_name
  location = "East US"
}
// terraform apply -var "application_name=grafsblog" -var "environment_name=dev"
