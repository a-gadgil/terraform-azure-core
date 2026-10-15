module "prod_storage" {
  source = "../../modules/storage"

  environment              = "prod"
  resource_group_name      = "rg-prod-storage-eastus"
  account_tier             = "Standard"
  account_replication_type = "GRS" # Geo-redundant for production resiliency
  container_name           = "production-data"
}