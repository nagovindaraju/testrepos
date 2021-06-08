terraform {
  backend "gcs" {
    bucket      = "tf_statbucket_learning0526"
}
  required_version = ">= 0.12"
}

provider "google" {
}
resource "google_storage_bucket" "default" {
  name = var.bucket_name
  project = var.project_id
  storage_class = var.storage_class
  location = var.bucket_location
   versioning {
    enabled = true
  }
}
