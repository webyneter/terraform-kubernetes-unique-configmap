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
| `configmap\_name\_prefix` | The ConfigMap name prefix | `string` | n/a | **yes** |
| `configmap\_data\_scope` | The logical scope of the ConfigMap data | `string` | n/a | **yes** |
| `configmap\_namespace` | The ConfigMap namespace | `string` | n/a | **yes** |
| `configmap\_data` | The ConfigMap data | `map` | n/a | **yes** |
| `configmap\_annotations` | The ConfigMap annotations | `map` | `{}` | no |
| `configmap\_labels` | The ConfigMap labels | `map` | `{}` | no |
| `configmap\_binary\_data` | The ConfigMap binary data | `map` | `{}` | no |
| `randomid\_prefix` | The random\_id resource prefix | `string` | `""` | no |
| `randomid\_suffix\_byte\_length` | The random\_id resource byte length | `int` | `4` | no |
| `randomid\_delimiter` | The delimiter used by the random\_id resource when constructing a trigger | `string` | `"|"` | no |

## Outputs

| Name | Description |
|------|-------------|
| `name` | The resulting ConfigMap name |
