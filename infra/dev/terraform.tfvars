project_id   = "keumartist-k8s-dev"
cluster_name = "k8s-dev-cluster"
region       = "asia-northeast3"
zones        = ["asia-northeast3-a", "asia-northeast3-b", "asia-northeast3-c"]

vpc_name = "k8s-dev-vpc"

subnet_name            = "k8s-dev-subnet"
ip_cidr_range          = "10.0.0.0/16"
ip_range_pods_name     = "pod-range"
ip_range_pods_cidr     = "10.1.0.0/16"
ip_range_services_name = "services-range"
ip_range_services_cidr = "10.2.0.0/16"

node_pool = {
  name               = "default-node-pool"
  machine_type       = "e2-small"
  min_count          = 1
  max_count          = 3
  disk_size_gb       = 10
  disk_type          = "pd-standard"
  image_type         = "COS_CONTAINERD"
  auto_repair        = true
  auto_upgrade       = true
  service_account    = "default"
  preemptible        = false
  initial_node_count = 1
}

# instance name, db name, db user, db password는 환경변수를 통해 주입한다.
mysql_version       = "MYSQL_5_7"
mysql_settings_tier = "db-f1-micro"
mysql_ipv4_enabled  = true
