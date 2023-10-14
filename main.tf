module "vpc" {
    source               = "./vendor/modules/docdb"
    ENV                  = var.ENV
    

}