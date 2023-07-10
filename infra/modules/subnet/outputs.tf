output "subnet_name" {
  description = "The ID of the subnetwork"
  value       = google_compute_subnetwork.subnet.name
}
