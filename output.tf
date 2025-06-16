output "gke_cluster_name" {
  value = module.gke.cluster_name
}

output "gke_region" {
  value = module.gke.region
}

output "gke_network_name" {
  value = module.gke.network_name
}

output "gke_subnetwork_name" {
  value = module.gke.subnetwork_name
}

output "gke_subnetwork_cidr" {
  value = module.gke.subnetwork_cidr
}

output "gke_project_id" {
  value = module.gke.project_id
}
