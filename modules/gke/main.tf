provider "google" {
  project = var.project_id
  region  = var.region
}

# Create a VPC network and subnetwork for the GKE cluster
resource "google_compute_network" "vpc_network" {
  name                    = var.network_name
  auto_create_subnetworks = false
}
resource "google_compute_subnetwork" "vpc_subnetwork" {
  name          = var.subnetwork_name
  ip_cidr_range = var.subnetwork_cidr
  region        = var.region
  network       = google_compute_network.vpc_network.id
}

# Enable necessary APIs
resource "google_project_service" "gke" {
  project = var.project_id
  service = "container.googleapis.com"
}
resource "google_project_service" "compute" {
  project                    = var.project_id
  service                    = "compute.googleapis.com"
  disable_on_destroy         = true
  disable_dependent_services = true
}
resource "google_project_service" "cloudresourcemanager" {
  project = var.project_id
  service = "cloudresourcemanager.googleapis.com"
}

# gke cluster
resource "google_container_cluster" "primary_cluster" {
  name                = var.cluster_name
  location            = var.region
  deletion_protection = false
  network             = google_compute_network.vpc_network.id
  subnetwork          = google_compute_subnetwork.vpc_subnetwork.id
  enable_autopilot    = true
}