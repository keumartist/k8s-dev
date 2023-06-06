variable "project_id" {
  description = "The project ID to host the cluster in (required)"
  type        = string
}

variable "cluster_name" {
  description = "The name of the cluster (required)"
  type        = string
}

variable "region" {
  description = "The region to host the cluster in (optional if zonal cluster / required if regional)"
  type        = string
  default     = "us-central1"
}

variable "zones" {
  description = "The zones to host the cluster in (optional if regional cluster / required if zonal)"
  type        = list(string)
  default     = ["us-central1-a", "us-central1-b", "us-central1-c"]
}

variable "network" {
  description = "The VPC network to host the cluster in (required)"
  type        = string
}

variable "subnetwork" {
  description = "The subnetwork to host the cluster in (required)"
  type        = string
}

variable "ip_range_pods" {
  description = "The secondary IP range of the subnetwork to use for pods (required)"
  type        = string
}

variable "ip_range_services" {
  description = "The secondary IP range of the subnetwork to use for services (required)"
  type        = string
}

variable "node_pool" {
  description = "The node pool configuration (required)"
  type = object({
    name               = string
    machine_type       = string
    min_count          = number
    max_count          = number
    disk_size_gb       = number
    disk_type          = string
    image_type         = string
    auto_repair        = bool
    auto_upgrade       = bool
    service_account    = string
    preemptible        = bool
    initial_node_count = number
  })
  default = {
    name               = "default-node-pool"
    machine_type       = "e2-micro"
    min_count          = 1
    max_count          = 3
    disk_size_gb       = 10
    disk_type          = "pd-standard"
    image_type         = "COS"
    auto_repair        = true
    auto_upgrade       = true
    service_account    = "default"
    preemptible        = false
    initial_node_count = 1
  }
}
