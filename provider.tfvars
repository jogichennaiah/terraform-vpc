terraform {
  backend "local" {}
}

provider "aws" {
    region  = "us-east-1" 

}


terraform {
    backend "s3" {}
 }