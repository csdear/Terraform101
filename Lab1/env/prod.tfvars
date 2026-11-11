environment_name = "prod"
instance_count   = 7
enabled          = true

# a list collection type, iterate with count
regions = ["westus", "eastus", "westus"]

# a map collection type, iterate with for_each
region_instance_count = {
  "westus" = 4
  "eastus" = 8
}
region_set = ["westus", "eastus"]
sku_settings = {
  kind = "P"
  tier = "Business"
}
