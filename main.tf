terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "~> 3.84"
    }
  }
}

resource "google_project_iam_binding" "sample_iam_binding" {
  project = "wikki-marketplace-prj"
  role    = "roles/viewer"

  members = [
    "user:vignesh.svn@gmail.com"
  ]
}