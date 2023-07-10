resource "google_sql_database_instance" "default" {
  name             = var.instance_name
  database_version = var.database_version
  project          = var.project_id
  region           = var.region

  settings {
    tier = var.settings_tier

    ip_configuration {
      ipv4_enabled = var.ipv4_enabled
    }
  }
}

resource "google_sql_database" "default" {
  name     = var.database_name
  instance = google_sql_database_instance.default.name
  project  = var.project_id
}

resource "google_sql_user" "default" {
  name     = var.sql_user
  instance = google_sql_database_instance.default.name
  password = var.sql_password
  project  = var.project_id
}
