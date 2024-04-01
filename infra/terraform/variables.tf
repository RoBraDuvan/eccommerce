variable "prefix" {
  type        = string
  description = "Prefijo para los recursos"
  default     = "kodekloud-"
}

variable "google_project_id" {
  type        = string
  description = "ID del proyecto de GCP"
}

variable "credentials_file" {
  type = string
}


variable "vpc_location" {
  type        = string
  description = "Ubicacion de la VPC"
  default     = "us-east1"
}

variable "subnet_cidr_range" {
  type        = string
  description = "CIDR de la subnet"
  default     = "10.10.0.0/24"
}


variable "gke_location" {
  type        = string
  description = "Ubicacion del cluster tiene que ser una zona de disponibilidad con la ubicacion de la VPC"
  default     = "us-east1-b"
}


variable "initial_node_count" {
  type        = string
  description = "Cantidad de nodos inicial"
  default     = 2

}
variable "node_count" {
  type        = string
  description = "Cantidad de nodos"
  default     = 4

}

variable "machine_type" {
  type        = string
  description = "Tipo de maquina"
  default     = "n1-standard-2"
}

