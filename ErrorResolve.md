# Troubleshooting the issue of automatic termination of Jenkins server on running the CI/CD Pipeline Script of terraform for EKS_Cluster Deployment

If on running the Terraform pipeline script on Jenkins for EKS_Cluster Deployment and your instance on which you installed jenkins gets terminated automatically then in that case:

Go to, Backend files of Jenkins-terraform and Eks-terraform and put the different keys or paths for both the backend.tf file.

For Example:-

In Jenkins-terraform's backend.tf file
terraform {
  backend "s3" {
    bucket = "ratsmdatastore"
    key    = "Jenkins/terraform.tfstate" # This is the key or path for storing the terraform.tfstate file for Jenkins-terraform 
    region = "ap-southeast-2"
  }
}

In the same way the Eks-terraform also has a backend.tf file 
terraform {
  backend "s3" {
    bucket = "ratsmdatastore" 
    key    = "Faulty/terraform.tfstate" # Here you can see that the key or path for storing the terraform's tfstate file is different
    region = "ap-southeast-2"
  }
}

# and this is how you can keep the same bucket for storing the terraform's tfstate files of both the terraform opeartions but in the different file locations.
