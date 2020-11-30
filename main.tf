module "vpc" {
  source                      = "./vpc"
  cidr_block                  = var.cidr_block
  public_subnet_cidr_blocks   = var.public_subnet_cidr_blocks
  availability_zones          = var.availability_zones
}

module "instance" {
  source                      = "./backend"
  subnet_id                   = module.vpc.subnet_id
  vpc_security_group_ids      = [module.vpc.sg_id]

}

module "frondend" {
  source                      = "./frondend"
  subnet_id                   = module.vpc.subnet_id
  vpc_security_group_ids      = [module.vpc.sg_id]

}



