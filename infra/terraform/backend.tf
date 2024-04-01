### For remote state
/*
terraform {
  backend "gcs" {
    bucket      = "gke-terraform-state"
    prefix      = "terraform/state"
    credentials = "var.credentials_file"
  }
}
*/