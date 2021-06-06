locals {
  configmap_first_name      = "${var.configmap_first_name}${var.configmap_first_name != "" ? var.configmap_name_delimiter : ""}"
  configmap_middle_name     = "${var.configmap_middle_name}${var.configmap_middle_name != "" ? var.configmap_name_delimiter : ""}"
  configmap_name_designator = "${var.configmap_name_designator}${var.configmap_name_designator != "" ? var.configmap_name_delimiter : ""}"
}
