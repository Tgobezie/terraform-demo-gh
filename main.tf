# Root

# State file store
terraform {
  backend "s3" {
    bucket  = "t-demo-tfstates"
    key     = "terraform-demo"
    region  = "us-east-1"
    profile = "default"
  }
}

module "vpc" {
    source  = "./modules/vpc"
}

module "ec2" {
    source  = "./modules/ec2"
    sgroup  = module.vpc.demo-sg
    sub     = module.vpc.demo-subnet

}
