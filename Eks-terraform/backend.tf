terraform {
  backend "s3" {
    bucket = "ratsmdatastore" # Replace with your actual S3 bucket name
    key    = "Faulty/terraform.tfstate"
    region = "ap-southeast-2"
  }
}
