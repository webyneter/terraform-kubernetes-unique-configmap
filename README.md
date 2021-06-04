# terraform-kubernetes-unique-configmaps

A Terraform module for creating Kubernetes ConfigMaps that change their names when the underlying data changes.

Allows for k8s Deployments to get restarted automatically on changes to the associated ConfigMap.

## Prerequisites

* Terraform >= 0.15
* Providers:
  * `kubernetes` >= 2.0
  * `null` >= 3.0

## Usage

```terraform
module "myapp_envs_configmap" {
  source = "webyneter/terraform-kubernetes-unique-configmaps"
  version = "0.1.0"

  configmap_data = local.myapp_envs
  configmap_name_prefix = "myapp"
  configmap_data_scope = "envs"
  configmap_namespace = "myapp"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| `configmap_name_prefix` | The ConfigMap name prefix | `string` | n/a | **yes** |
| `configmap_data_scope` | The logical scope of the ConfigMap data | `string` | n/a | **yes** |
| `configmap_namespace` | The ConfigMap namespace | `string` | n/a | **yes** |
| `configmap_data` | The ConfigMap data | `map` | n/a | **yes** |
| `configmap_annotations` | The ConfigMap annotations | `map` | `{}` | no |
| `configmap_labels` | The ConfigMap labels | `map` | `{}` | no |
| `configmap_binary_data` | The ConfigMap binary data | `map` | `{}` | no |
| `randomid_prefix` | The random_id resource prefix | `string` | `""` | no |
| `randomid_suffix_byte_length` | The random_id resource byte length | `int` | `4` | no |
| `randomid_delimiter` | The delimiter used by the random_id resource when constructing a trigger | `string` | `"|"` | no |

## Outputs

| Name | Description |
|------|-------------|
| `name` | The ConfigMap name |
