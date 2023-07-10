variable "subnet_name" {
  description = "The name of the subnetwork."
  type        = string
}

variable "ip_cidr_range" {
  description = "The IP address range of the subnetwork."
  type        = string
}

variable "region" {
  description = "The region of the subnetwork."
  type        = string
}

variable "network" {
  description = "The network to which this subnetwork belongs."
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

variable "project_id" {
  description = "The ID of the project where resources will be provisioned."
  type        = string
}
