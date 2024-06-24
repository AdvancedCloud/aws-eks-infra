module "vpc" {
  source          = "../modules/vpc"
  ENV             = var.ENV
  REGION          = var.REGION
  VPC_CIDR_BLOCK  = var.VPC_CIDR_BLOCK
  PUBLIC_SUBNETS  = var.PUBLIC_SUBNETS
  PRIVATE_SUBNETS = var.PRIVATE_SUBNETS
}

module "iam" {
  source       = "../modules/iam"
  cluster_name = module.vpc.cluster_name
}