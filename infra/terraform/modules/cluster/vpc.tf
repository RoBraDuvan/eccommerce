
# VPC
resource "google_compute_network" "gke-vpc-main" {
  name                    = var.vpc_name
  auto_create_subnetworks = "false"
}

# Subnet
resource "google_compute_subnetwork" "subnet" {
  name          = "${var.subnet_name}-1"
  region        = var.vpc_location
  network       = google_compute_network.gke-vpc-main.name
  ip_cidr_range = var.subnet_cidr_range
}