variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

variable "cluster_name" {
  description = "GKE cluster name"
  type        = string
}

variable "network_name" {
  description = "The name of the VPC network."
  type        = string
}
variable "subnetwork_name" {
  description = "The name of the subnetwork."
  type        = string
}
variable "subnetwork_cidr" {
  description = "CIDR range for the subnet"
  type        = string
}

variable "min_cpu" {
  description = "Minimum CPU cores for cluster autoscaling"
  type        = number
}

variable "max_cpu" {
  description = "Maximum CPU cores for cluster autoscaling"
  type        = number
}

variable "min_memory" {
  description = "Minimum memory (GB) for cluster autoscaling"
  type        = number
}

variable "max_memory" {
  description = "Maximum memory (GB) for cluster autoscaling"
  type        = number
}