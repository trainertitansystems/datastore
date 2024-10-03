
terraform {
  backend "gcs" {
    bucket  = var.gcs_bucket_name  # GCS bucket where state will be stored
  }
}

provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = file(var.credentials_file_path)  # GCP service account key
}

