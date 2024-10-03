
output "datastore_instance_name" {
  description = "The name of the Firestore datastore instance"
  value       = google_firestore_database.datastore_instance.name
}

output "datastore_region" {
  description = "The region of the Firestore datastore instance"
  value       = google_firestore_database.datastore_instance.location_id
}

