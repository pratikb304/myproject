
# Providers Block 


provider "google" {
    credentials = file ("gcpstudy-420008-abb6dd49c6f0.json")
    project = var.project_id
    zone = var.zone
  
}

# provider "aws" {
# region = "us-east-1"
# }

# To control the Terraform and Providers Version 

terraform {

 required_providers {

    google  = {

     version = "~> 5.24.0"

   }
  }
  required_version = "~> 1.7.5"
}


# Migrate your state file to Storage Bucket

# terraform {
#   backend "gcs" {
#     bucket = "gcp-work-pratt"
#     credentials = "gcpstudy-420008-abb6dd49c6f0.json"
#   }
# }