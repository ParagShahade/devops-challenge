<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_network.vpc_network](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network) | resource |
| [google_compute_subnetwork.vpc_subnetwork](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork) | resource |
| [google_container_cluster.primary_cluster](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/container_cluster) | resource |
| [google_project_service.cloudresourcemanager](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_service) | resource |
| [google_project_service.compute](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_service) | resource |
| [google_project_service.gke](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_service) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | The name of the GKE cluster. | `string` | n/a | yes |
| <a name="input_max_cpu"></a> [max\_cpu](#input\_max\_cpu) | Maximum CPU cores for cluster autoscaling | `number` | n/a | yes |
| <a name="input_max_memory"></a> [max\_memory](#input\_max\_memory) | Maximum memory (GB) for cluster autoscaling | `number` | n/a | yes |
| <a name="input_min_cpu"></a> [min\_cpu](#input\_min\_cpu) | Minimum CPU cores for cluster autoscaling | `number` | n/a | yes |
| <a name="input_min_memory"></a> [min\_memory](#input\_min\_memory) | Minimum memory (GB) for cluster autoscaling | `number` | n/a | yes |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | The name of the VPC network. | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The ID of the project in which the resources will be created. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region in which the resources will be created. | `string` | n/a | yes |
| <a name="input_subnetwork_cidr"></a> [subnetwork\_cidr](#input\_subnetwork\_cidr) | The CIDR range for the subnetwork. | `string` | n/a | yes |
| <a name="input_subnetwork_name"></a> [subnetwork\_name](#input\_subnetwork\_name) | The name of the subnetwork. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_name"></a> [cluster\_name](#output\_cluster\_name) | n/a |
| <a name="output_network_name"></a> [network\_name](#output\_network\_name) | n/a |
| <a name="output_project_id"></a> [project\_id](#output\_project\_id) | n/a |
| <a name="output_region"></a> [region](#output\_region) | n/a |
| <a name="output_subnetwork_cidr"></a> [subnetwork\_cidr](#output\_subnetwork\_cidr) | n/a |
| <a name="output_subnetwork_name"></a> [subnetwork\_name](#output\_subnetwork\_name) | n/a |
<!-- END_TF_DOCS -->