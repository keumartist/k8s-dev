output "vpc_name" {
  description = "The ID of the VPC"
  value       = google_compute_network.vpc_network.name
}
