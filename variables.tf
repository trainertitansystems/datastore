variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
}

variable "region" {
  description = "The region for the resources"
  type        = string
}


variable "credentials_file_path" {
  description = "The path to the service account JSON credentials file"
  type        = string
}

variable "gcs_bucket_name" {
  description = "The name of the GCS bucket to store the Terraform state"
  type        = string
}

