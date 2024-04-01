### Infraestructure

module "gke" {
  source = "./modules/cluster"

  # Creacion de la VPC y subnet para el cluster

  google_project_id = var.google_project_id

  vpc_name = "${var.prefix}gke-main"

  subnet_name = "${var.prefix}gke-subnet"

  vpc_location = var.vpc_location

  subnet_cidr_range = var.subnet_cidr_range


  # Creacion del cluster

  gke_cluster_name = "${var.prefix}gke-cluster"
  gke_location     = var.gke_location

  initial_node_count = var.initial_node_count
  node_count         = var.node_count

  machine_type = var.machine_type
}