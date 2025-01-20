terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.16.0"
    }
  }
}

provider "google" {
  # Configuration options
  project     = "valiant-airlock-448314-t1"
  region      = "us-central1"
}

resource "google_storage_bucket" "demo-bucket" {
  name          = "valiant-airlock-448314-t1-terraform-demo"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}