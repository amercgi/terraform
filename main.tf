# Create a GCS Bucket tf-bucket-poc to store terraform state plan
resource "google_storage_bucket" "tf-state-bucket-poc" {
  project       = var.gcp_project
  name          = var.bucket-name-tfstate
  location      = var.gcp_region
  force_destroy = true
  storage_class = var.storage-class
  versioning {
    enabled = false
  }
}

# Create a GCS Bucket tfplan-bucket-poc to store tfplan.out output file
resource "google_storage_bucket" "tf-plan-bucket-poc" {
  project       = var.gcp_project
  name          = var.bucket-name-tfout
  location      = var.gcp_region
  force_destroy = true
  storage_class = var.storage-class
  versioning {
    enabled = false
  }
}

resource "google_compute_network" "vpc1" {
  name                    = "gwcm-poc-network-1"
  auto_create_subnetworks = "false"

}

resource "google_compute_subnetwork" "gwcm-custom-subnet1" {
  name          = "gwcm-poc-subnet-1"
  ip_cidr_range = "10.255.196.0/24"
  network       = "google_compute_network.vpc1.name"
  region        = "northamerica-northeast1"
}

# Upload files tfplan.out to GCS Bucket gwcm-tfoutput-bucket-poc . 
resource "google_storage_bucket_object" "default" {
  name   = "tfplan.out"
  source = "jenkins-integration-test/tfplan.out"
  content      = "Data as string to be uploaded"
  content_type = "text/plain"
  bucket = "gwcm-tfoutput-bucket-poc"
}
