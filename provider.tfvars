terraform {
  backend "local" {}
}

provider "aws" {
    region  = "us-west-2" 

}

resource "aws_instance" "app" {
  ami           = "b55-chinna-lab-image"
  instance_type = "t3.micro"
}


terraform {
    backend "s3" {}
 }