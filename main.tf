module "vpc" {
    source               = "./vendor/modules/docdb"
    VPC_CIDR             = var.VPC_CIDR
    ENV                  = var.ENV
    

}