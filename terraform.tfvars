# Note: Ensure that the project ID, region, and other parameters are set according to your GCP setup.
project_id      = "YOUR_PROJECT_ID" # Replace with your actual GCP project ID
region          = "YOUR_REGION"     # Replace with your actual GCP region, e.g., "us-central1"
cluster_name    = "cors-proxy-cluster"
network_name    = "challenge-network"
subnetwork_name = "challenges-subnetwork"
subnetwork_cidr = "10.0.0.0/16"
min_cpu         = 2
max_cpu         = 20
min_memory      = 4
max_memory      = 64
