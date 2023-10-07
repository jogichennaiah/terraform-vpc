terraform {
  backend "local" {}
}

provider "aws" {
    region  = "us-east-1" 

}

resource "aws_instance" "app" {
  ami           = "b55-chinna-lab-image"
  instance_type = "t3.micro"
}


terraform {
    backend "s3" {}
 }