variable "project_id" {
  description = "The ID of the project where resources will be provisioned."
  type        = string
}

variable "cluster_name" {
  description = "The name of the GKE cluster."
  type        = string
}

variable "region" {
  description = "The region where resources will be provisioned."
  type        = string
}

variable "zones" {
  description = "The zones where resources will be provisioned."
  type        = list(string)
}

variable "node_pool" {
  description = "The configuration for the node pool in the GKE cluster."
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
}

variable "vpc_name" {
  description = "The name of the VPC network."
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
}

variable "ip_cidr_range" {
  description = "The IP CIDR range of the subnet."
  type        = string
}

variable "ip_range_pods_name" {
  description = "The name of the secondary IP range for Pods."
  type        = string
}

variable "ip_range_pods_cidr" {
  description = "The IP CIDR range of the secondary IP range for Pods."
  type        = string
}

variable "ip_range_services_name" {
  description = "The name of the secondary IP range for Services."
  type        = string
}

variable "ip_range_services_cidr" {
  description = "The IP CIDR range of the secondary IP range for Services."
  type        = string
}
