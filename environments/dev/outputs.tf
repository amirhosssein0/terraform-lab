output "aks_cluster_name" {
  value = module.aks.name
}

output "acr_login_server" {
  value = module.acr.login_server
}

output "kube_config" {
  value     = module.aks.kube_config_raw
  sensitive = true
}