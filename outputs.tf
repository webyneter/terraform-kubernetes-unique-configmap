output "configmap_name" {
  value       = kubernetes_config_map.unique.metadata[0].name
  description = "The name of the resulting ConfigMap"
}
