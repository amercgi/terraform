# define GCP region
variable "gcp_region" {
  type        = string
  description = "northamerica-northeast1"
}

# define GCP project name
variable "gcp_project" {
  type        = string
  description = "sandbox-in-org"
}
# GCP authentication file
#variable "gcp_auth_file" {
#  type        = string
##  description = "GCP authentication file"
#}
variable "bucket-name-tfstate" {
  type        = string
  description = "tf-state-bucket-poc"
}

variable "bucket-name-tfout" {
  type        = string
  description = "tf-plan-bucket-poc"
}

variable "storage-class" {
  type        = string
  description = "Standard"
}
