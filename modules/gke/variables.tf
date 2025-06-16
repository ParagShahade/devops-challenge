variable "project_id" {
  description = "The ID of the project in which the resources will be created."
  type        = string
}

variable "region" {
  description = "The region in which the resources will be created."
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
  description = "The CIDR range for the subnetwork."
  type        = string
}

variable "cluster_name" {
  description = "The name of the GKE cluster."
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