project_id              = "master-402108"
region                 = "asia-south1"
datastore_region        = "asia-south1"
credentials_file_path   = "master-402108-21c4900c792a.json"
gcs_bucket_name         = "tf-state21"
datastore_instance_name = "testcabs919"
kind_name               = "test_cabs_db"
index_properties = [
  {
    name      = "property1"
    direction = "asc"  # Corrected to lowercase
  },
  {
    name      = "property2"
    direction = "desc"  # Corrected to lowercase
  }
]

