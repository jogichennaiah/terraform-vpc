provider "aws" {
    region = "us-east-1"
}


terraform {
  backend "s3" {
    bucket  = "b55-terraform-bucket"
    key     = "vpc/dev/terraform.tfstate"
    region  = "us-east-1"  
  }
}