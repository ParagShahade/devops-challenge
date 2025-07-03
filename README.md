<!-- BEGIN_TF_DOCS -->
## Requirements

### Enable APIs
* container.googleapis.com
* compute.googleapis.com
* cloudresourcemanager.googleapis.com


### IAC: Terraform

* Initialization
```bash
terraform init
```

* Plan & Validate
```bash
terraform plan
terraform validate
```
* Apply 
```bash
terraform Apply
```

### Connect to gke cluster
```bash
gcloud container clusters get-credentials cors-proxy-cluster --location=YOUR_REGION --project=YOUR_PROJECT_ID
```

### Kubernetes Deployment & Service
```bash
kubectl apply -f kube-deployment/deployment.yaml
kubectl apply -f kube-deployment/service.yaml
kubectl apply -f kube-deployment/hpa.yaml
```
* Pod & Service Status

```bash
kubectl get pods
kubectl get svc cors-proxy
```

### LoadBalancer

External IP will be provisioned after a few seconds
```bash
Example:EXTERNAL-IP: 34.76.xx.xx
```
### Access Example:
```bash
curl -H "Origin: https://example.com" \
     "http://34.76.xx.xx/https://official-joke-api.appspot.com/random_joke"
```
### Quota Notice

After hitting 1000+ requests, GCP displayed a quota warning. This indicates the current setup is hitting platform or billing trial limits.


## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_gke"></a> [gke](#module\_gke) | ./modules/gke | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | GKE cluster name | `string` | n/a | yes |
| <a name="input_max_cpu"></a> [max\_cpu](#input\_max\_cpu) | Maximum CPU cores for cluster autoscaling | `number` | n/a | yes |
| <a name="input_max_memory"></a> [max\_memory](#input\_max\_memory) | Maximum memory (GB) for cluster autoscaling | `number` | n/a | yes |
| <a name="input_min_cpu"></a> [min\_cpu](#input\_min\_cpu) | Minimum CPU cores for cluster autoscaling | `number` | n/a | yes |
| <a name="input_min_memory"></a> [min\_memory](#input\_min\_memory) | Minimum memory (GB) for cluster autoscaling | `number` | n/a | yes |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | The name of the VPC network. | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | GCP project ID | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | GCP region | `string` | n/a | yes |
| <a name="input_subnetwork_cidr"></a> [subnetwork\_cidr](#input\_subnetwork\_cidr) | CIDR range for the subnet | `string` | n/a | yes |
| <a name="input_subnetwork_name"></a> [subnetwork\_name](#input\_subnetwork\_name) | The name of the subnetwork. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_gke_cluster_name"></a> [gke\_cluster\_name](#output\_gke\_cluster\_name) | n/a |
| <a name="output_gke_network_name"></a> [gke\_network\_name](#output\_gke\_network\_name) | n/a |
| <a name="output_gke_project_id"></a> [gke\_project\_id](#output\_gke\_project\_id) | n/a |
| <a name="output_gke_region"></a> [gke\_region](#output\_gke\_region) | n/a |
| <a name="output_gke_subnetwork_cidr"></a> [gke\_subnetwork\_cidr](#output\_gke\_subnetwork\_cidr) | n/a |
| <a name="output_gke_subnetwork_name"></a> [gke\_subnetwork\_name](#output\_gke\_subnetwork\_name) | n/a |
<!-- END_TF_DOCS -->
