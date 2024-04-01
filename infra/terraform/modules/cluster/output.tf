output "kubectl_connection" {
  # Conexion con kubectl en cloud shell
  value = "gcloud container clusters get-credentials ${var.gke_cluster_name} --zone=${var.gke_location}"

}