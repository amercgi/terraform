terraform {
  backend "gcs" {
    bucket = "gwcm-tfstate-bucket-poc"
    prefix = "terraform/init"
  }
}
