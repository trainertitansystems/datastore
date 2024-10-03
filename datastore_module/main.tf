resource "google_firestore_database" "datastore_instance" {
  project      = var.project_id
  location_id  = var.datastore_region
  name         = var.datastore_instance_name
  type         = "DATASTORE_MODE"
}

locals {
  index_content = <<EOT
indexes:
  - kind: "${var.kind_name}"
    properties:
EOT

  index_properties_content = join("\n", [
    for prop in var.index_properties : "      - name: \"${prop.name}\"\n        direction: \"${lower(prop.direction)}\""
  ])
}

resource "local_file" "index_yaml" {
  filename = "${path.module}/index.yaml"

  content = "${local.index_content}${local.index_properties_content}"
}

resource "null_resource" "datastore_index" {
  provisioner "local-exec" {
    command = "gcloud datastore indexes create ${local_file.index_yaml.filename} --project=${var.project_id}"
  }

  depends_on = [google_firestore_database.datastore_instance, local_file.index_yaml]
}

