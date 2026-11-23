// from input vars
output "application_name" {
  value = var.application_name
}
output "environment_name" {
  value = var.environment_name
}
// from our Locals 
output "get_from_locals" {
  value = local.resource_group_name
}

output "suffix" {
  value = random_string.suffix.result
}

output "anotherAppEnvRandom" {
  value = local.anotherAppEnvRandom
}

output "api_key" {
  value     = var.api_key
  sensitive = true
}

output "primary_region" {
  value = var.regions[0]
}

output "primary_region_instance" {
  value = var.region_instance_count["westus"]
  // Or layer-in 
  // value = var.region_instance_count[var.regions[0]]
}

output "kind" {
  value = var.sku_settings.kind
}

output "alpha" {
  value = module.alpha.random_string
}

output "beta" {
  value = module.alpha.random_string
}

output "charlie" {
  value = module.charlie.random_string
}
