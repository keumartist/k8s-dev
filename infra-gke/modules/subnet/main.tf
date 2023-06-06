resource "google_compute_subnetwork" "subnet" {
  name          = var.subnet_name
  project       = var.project_id
  ip_cidr_range = var.ip_cidr_range
  region        = var.region
  network       = var.network

  secondary_ip_range {
    range_name    = var.ip_range_pods_name
    ip_cidr_range = var.ip_range_pods_cidr
  }

  secondary_ip_range {
    range_name    = var.ip_range_services_name
    ip_cidr_range = var.ip_range_services_cidr
  }
}
