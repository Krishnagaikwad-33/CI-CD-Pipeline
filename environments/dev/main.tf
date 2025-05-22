module "vpc" {
  source = "../../modules/vpc"
}

module "ec2" {
  source     = "../../modules/ec2"
  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.public_subnets
}

module "s3" {
  source = "../../modules/s3"
}
