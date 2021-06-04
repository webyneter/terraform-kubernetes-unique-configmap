resource "random_id" "unique" {
  # https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id
  prefix      = var.randomid_prefix
  byte_length = var.randomid_suffix_byte_length
  keepers = {
    data        = join(var.randomid_delimiter, [for k, v in var.configmap_data : "${k}=${v}"])
    binary_data = join(var.randomid_delimiter, [for k, v in var.configmap_binary_data : "${k}=${v}"])
  }
}

resource "kubernetes_config_map" "unique" {
  # https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/config_map
  metadata {
    name        = "${var.configmap_name_prefix}-${var.configmap_data_scope}-configmap-${random_id.unique.hex}"
    namespace   = var.configmap_namespace
    annotations = var.configmap_annotations
    labels      = var.configmap_labels
  }

  data = var.configmap_data

  binary_data = var.configmap_binary_data
}
