provider "aws" {
  access_key = var.my_access_key
  secret_key = var.my_secret_key
  region     = var.region
}

provider "random" {
}

resource "random_id" "prefix" {
  byte_length = 8
}

module "ec2" {
  source = "./modules/ec2"

  infra_env = var.infra_env

  instance_profile = module.iam.iam_profile
  subnet_id = module.vpc.subnet_1
  gw_1 = module.vpc.gw_1
}

module "iam" {
  source = "./modules/iam"

  infra_env = var.infra_env
}

module "s3" {
  source = "./modules/s3"

  infra_env = var.infra_env
}

module "sg" {
  source = "./modules/sg" 

  infra_env = var.infra_env
  vpc_id = module.vpc.vpc_1
  }

module "vpc" {
  source = "./modules/vpc"

  infra_env = var.infra_env
}

