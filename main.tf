module "vpc" {
  source                    = "./vendor/modules/vpc"
  VPC_CIDR                  = var.VPC_CIDR
  ENV                       = var.ENV
  AZ                        = var.AZ 
}