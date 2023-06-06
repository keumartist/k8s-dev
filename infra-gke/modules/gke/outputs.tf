output "cluster_name" {
  description = "The name of the cluster"
  value       = module.gke.name
}

output "cluster_endpoint" {
  description = "The endpoint of the cluster"
  value       = module.gke.endpoint
}

output "cluster_ca_certificate" {
  description = "The public certificate that is the root of trust for the cluster"
  value       = module.gke.ca_certificate
}

output "endpoint" {
  description = "Endpoint of the GKE cluster"
  value       = module.gke.endpoint
}

output "ca_certificate" {
  description = "CA certificate of the GKE cluster"
  value       = module.gke.ca_certificate
}
