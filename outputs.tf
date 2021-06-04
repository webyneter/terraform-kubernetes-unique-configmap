output "name" {
  value       = kubernetes_config_map.unique.metadata[0].name
  description = "The ConfigMap name"
}
