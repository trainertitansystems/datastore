

variable "datastore_region" {
  description = "The region of the Firestore datastore"
  type        = string
}

variable "datastore_instance_name" {
  description = "The name of the Firestore datastore instance"
  type        = string
}

variable "kind_name" {
  description = "The kind name for the Firestore datastore"
  type        = string
}

variable "index_properties" {
  description = "Properties for indexing"
  type        = list(object({
    name      = string
    direction = string
  }))
}

