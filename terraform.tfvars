##{terraform.tfvars}
#All variables included from var.tf

project_id = "gaurav-uig-uh65688"  ###Refer Appendix

region = "us-west1"

zone = "us-west1-b"

name = "db-cluster6876875678"

database_version = "MYSQL_4_2"

tier = "db-n1-standard-2"

disk_type = "PD-HDD"

disk_size = 200

disk_autoresize = true

activation_policy = "ALWAYS"

availability_type = "REGIONAL"

###Refer Appendix

private_network = "projects/gaurav-uig-uh65688/global/networks/gagurav-vpc"               

secret = "projects/791875507906/secrets/db-secret"    ###Refer Appendix
