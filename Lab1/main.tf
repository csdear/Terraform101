
resource "random_string" "suffix" {
  length  = 6
  upper   = false
  special = false
}



locals {
  resource_group_name = "${var.application_name}-${var.environment_name}-rg"
  anotherAppEnvRandom = "${var.application_name}-${var.environment_name}-${random_string.suffix.result}"
}
