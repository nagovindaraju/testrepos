terraform {
  backend "gcs" {
    bucket      = "tf-statbucket-learning-backend"
    prefix      = "terraform/state"
    credentials = "GOOGLE_CREDENTIALS: ${{ secrets.GOOGLE_CREDENTIALS }}"
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
