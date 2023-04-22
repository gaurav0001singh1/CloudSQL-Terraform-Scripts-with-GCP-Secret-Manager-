##{var.tf}
##General configs
variable "project_id" {
    description = "Project in which you want to host SQL cluster"
    type = string
}
variable "region" {
    description = "Region in which you want to host SQL cluster"
    type = string
}
variable "zone" {
    description = "Zone in which you want to host SQL cluster"
    type = string
}
##SQL instance specific variables 
variable "name" {
    description = "globally unique name of cluster"
    
}
variable "database_version" {
    description = "Database version of Cluster"
   
}
variable "tier" {
    description = "Tier of Cluster "
    
}
variable "disk_type" {
    description = "disk_type of Cluster"
    
}
variable "disk_size" {
    description = "disk_size of Cluster in GB "
    type = number
}
variable "disk_autoresize" {
    description = "Automatic resize of disk"
    type = bool
}
variable "activation_policy" {
    description = "ALWAYS, NEVER, ON_DEMAND etc"
    type = string
}
variable "availability_type" {
    description = "REGIONAL,ZONAL resource deployment etc. "
    type = string
}
variable "private_network" {
    description = "private network which you are planning to use"
    
}
variable "secret" {
    description = "Secret Id"
    
}
variable "secret_version" {
    description = "Version of secret"
    type = number 
}
