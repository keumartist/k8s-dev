data "google_client_config" "default" {}

provider "kubernetes" {
  host                   = "https://${module.gke.endpoint}"
  token                  = data.google_client_config.default.access_token
  cluster_ca_certificate = base64decode(module.gke.ca_certificate)
}

module "vpc" {
  source     = "../modules/vpc"
  vpc_name   = var.vpc_name
  project_id = var.project_id
}

module "subnet" {
  source                 = "../modules/subnet"
  subnet_name            = var.subnet_name
  project_id             = var.project_id
  ip_cidr_range          = var.ip_cidr_range
  region                 = var.region
  network                = module.vpc.vpc_name
  ip_range_pods_name     = var.ip_range_pods_name
  ip_range_pods_cidr     = var.ip_range_pods_cidr
  ip_range_services_name = var.ip_range_services_name
  ip_range_services_cidr = var.ip_range_services_cidr

  depends_on = [module.vpc]
}

module "gke" {
  source            = "../modules/gke"
  project_id        = var.project_id
  cluster_name      = var.cluster_name
  region            = var.region
  zones             = var.zones
  network           = module.vpc.vpc_name
  subnetwork        = module.subnet.subnet_name
  ip_range_pods     = var.ip_range_pods_name
  ip_range_services = var.ip_range_services_name
  node_pool         = var.node_pool

  depends_on = [module.vpc, module.subnet]
}

module "mysql" {
  source = "../modules/db"

  instance_name    = var.mysql_instance_name
  database_version = var.mysql_version
  settings_tier    = var.mysql_settings_tier
  ipv4_enabled     = var.mysql_ipv4_enabled
  database_name    = var.mysql_name
  sql_user         = var.mysql_user
  sql_password     = var.mysql_password
  project_id       = var.project_id
  region           = var.region

}
