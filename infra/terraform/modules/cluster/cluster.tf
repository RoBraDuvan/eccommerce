# Archivo de definicion del cluster GKE

resource "google_container_cluster" "gke-cluster" {
  name        = var.gke_cluster_name
  project     = var.google_project_id
  location    = var.gke_location
  description = "Creacion de un Cluster en Google Kubernetes Engine"
  # enable_autopilot = true

  enable_legacy_abac       = true
  remove_default_node_pool = true
  initial_node_count       = var.initial_node_count
  network                  = google_compute_network.gke-vpc-main.name
  subnetwork               = google_compute_subnetwork.subnet.name

  master_auth {

    client_certificate_config {
      issue_client_certificate = false
    }
  }
}

resource "google_container_node_pool" "default" {
  name       = "${var.gke_cluster_name}-node-pool"
  project    = var.google_project_id
  location   = var.gke_location
  cluster    = google_container_cluster.gke-cluster.name
  node_count = var.node_count

  node_config {
    preemptible  = true
    machine_type = var.machine_type
    disk_size_gb = 10
    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
    labels = {
      role = "general"
    }
  }


}