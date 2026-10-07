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
