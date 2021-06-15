terraform {
  backend "gcs" {
    bucket      = "man-store-bkt"
    prefix      = "root\network-tfsate"
    credentials = "learning-project-314911-161135f1dae6.json"
  }
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
