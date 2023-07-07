variable "instance_name" {
  description = "The name of the SQL instance"
}

variable "database_version" {
  description = "The database version of the SQL instance"
}

variable "settings_tier" {
  description = "The tier of the SQL instance"
}

variable "ipv4_enabled" {
  description = "Boolean value for enabling/disabling IPv4 for the SQL instance"
}

variable "project_id" {
  description = "Project ID in which this database belongs"
}

variable "region" {
  description = "Region in which this database belongs"
}

# 민감 정보이므로 소스코드에는 노출하지 않는다.
variable "database_name" {
  description = "The name of the database"
}

# 민감 정보이므로 소스코드에는 노출하지 않는다.
variable "sql_user" {
  description = "The SQL user name"
}

# 민감 정보이므로 소스코드에는 노출하지 않는다.
variable "sql_password" {
  description = "The SQL password"
}
