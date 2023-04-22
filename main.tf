####{main.tf}

#Provider Block

provider "google-beta"{
  project = var.project_id
  region = var.region
  zone = var.zone
}

#Resource Block for google_sql_database_instance

resource "google_sql_database_instance" "gauravsql" {
  
  name             = var.name
  database_version = var.database_version
  region           = var.region
  deletion_protection = false     #for latest versions you need to explicitly mention this as "false"
  root_password = data.google_secret_manager_secret_version.gauravsecrets.secret

  settings {
    # Second-generation instance tiers are based on the machine type. 
    tier = var.tier  
    disk_type = var.disk_type
    disk_size = var.disk_size
    disk_autoresize = var.disk_autoresize
    activation_policy = var.activation_policy
    availability_type = var.availability_type

    ip_configuration {
      ipv4_enabled                                  = false
      private_network                               = var.private_network
      enable_private_path_for_google_cloud_services = true
    }
  }
}
#Data Block for accessing password value stored in GCP Secret Manager

data "google_secret_manager_secret_version" "gauravsecrets" {
  secret = var.secret
  version = var.secret_version
}
