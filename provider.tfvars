provider "aws" {
    region  = "us-east-1" 

}

terraform {
  backend "local" {}
}




terraform {
    backend "s3" {}
 }