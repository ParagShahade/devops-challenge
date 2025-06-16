module "gke" {
  source          = "./modules/gke"
  project_id      = var.project_id
  region          = var.region
  network_name    = var.network_name
  subnetwork_name = var.subnetwork_name
  subnetwork_cidr = var.subnetwork_cidr
  cluster_name    = var.cluster_name
  min_cpu         = var.min_cpu
  max_cpu         = var.max_cpu
  min_memory      = var.min_memory
  max_memory      = var.max_memory
}