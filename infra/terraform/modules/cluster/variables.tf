variable "google_project_id" {
  type        = string
  description = "ID del proyecto de GCP"
}


variable "vpc_name" {
  type        = string
  description = "Nombre de la VPC"

}
variable "subnet_name" {
  type        = string
  description = "Nombre de la subnet"

}
variable "vpc_location" {
  type        = string
  description = "Ubicacion de la VPC"

}

variable "subnet_cidr_range" {
  type        = string
  description = "CIDR de la subnet"

}

variable "gke_cluster_name" {
  type        = string
  description = "Nombre del cluster"

}

variable "gke_location" {
  type        = string
  description = "Ubicacion del cluster tiene que ser una zona de disponibilidad con la ubicacion de la VPC"

}


variable "initial_node_count" {
  type        = string
  description = "Cantidad de nodos inicial"

}
variable "node_count" {
  type        = string
  description = "Cantidad de nodos"

}

variable "machine_type" {
  type        = string
  description = "Tipo de maquina"

}

