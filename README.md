# terraform-kubernetes-unique-configmaps

A [Terraform module](https://registry.terraform.io/modules/webyneter/unique-configmaps/kubernetes/latest) for creating Kubernetes ConfigMaps that change their names when the underlying data changes.

Allows for k8s Deployments to get restarted automatically on changes to the associated ConfigMap.

## Prerequisites

* Terraform >= 0.15

## Authorship

Authored and maintained by [Nikita Shupeyko](https://github.com/webyneter).

## License

Released under [MIT License](./LICENSE).
