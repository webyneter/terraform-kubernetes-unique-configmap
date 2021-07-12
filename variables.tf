# ==================
# Required variables
# ==================

variable "configmap_first_name" {
  description = "The ConfigMap name prefix"
}

variable "configmap_namespace" {
  description = "The ConfigMap namespace"
}

variable "configmap_data" {
  description = "The ConfigMap data"
}

# ==================
# Optional variables
# ==================

variable "configmap_middle_name" {
  description = "The part of the ConfigMap name immediately following the prefix"
  default     = ""
}

variable "configmap_name_delimiter" {
  description = "The character separating the parts of the ConfigMap name"
  default     = "-"
}

variable "configmap_name_designator" {
  description = "The designator for the ConfigMap"
  default     = "configmap"
}

variable "configmap_annotations" {
  description = "The ConfigMap annotations"
  default     = {}
}

variable "configmap_labels" {
  description = "The ConfigMap labels"
  default     = {}
}

variable "configmap_binary_data" {
  description = "The ConfigMap binary data"
  default     = {}
}

variable "randomid_prefix" {
  description = "The random_id resource prefix"
  default     = ""
}

variable "randomid_suffix_byte_length" {
  description = "The random_id resource byte length"
  default     = 4
}

variable "randomid_delimiter" {
  description = "The delimiter used by the random_id resource when constructing a trigger"
  default     = "|"
}
