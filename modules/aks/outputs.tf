output "id" {
  value       = azurerm_kubernetes_cluster.this.id
  description = "ID of the AKS cluster"
}

output "name" {
  value       = azurerm_kubernetes_cluster.this.name
  description = "Name of the AKS cluster"
}

output "kube_config_raw" {
  value       = azurerm_kubernetes_cluster.this.kube_config_raw
  description = "Raw kubeconfig for connecting to the cluster"
  sensitive   = true
}

output "kubelet_identity_object_id" {
  value       = azurerm_kubernetes_cluster.this.kubelet_identity[0].object_id
  description = "Object ID of the kubelet identity (used for ACR pull permission)"
}