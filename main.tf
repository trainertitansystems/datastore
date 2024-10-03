module "datastore" {
  source = "./datastore_module"
  project_id              = var.project_id
  datastore_region        = var.datastore_region
  datastore_instance_name = var.datastore_instance_name
  kind_name               = var.kind_name
  index_properties        = [
    {
      name      = "Property1"
      direction = "ASCENDING"  # or "DESCENDING"
    },
    {
      name      = "Property2"
      direction = "DESCENDING"  # or "ASCENDING"
    }
  ]
}

