
terraform {

  required_providers {
    # proveedor de gcloud

    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}



provider "google" {
  credentials = file(var.credentials_file)
  project     = var.google_project_id

}
