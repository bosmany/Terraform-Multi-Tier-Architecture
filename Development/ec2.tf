module "dev_compute_1" {
  source      = "../modules/compute"
  ami               = var.ami
  instance_type     = var.instance_type
  instance_name     = var.instance_name
}

module "dev_elb_1" {
  source          = "../modules/elb"
  environment     = var.environment
  nlbname         = var.nlbname
  subnets         = module.dev_vpc_1.public_subnets_id
  tgname          = var.tgname
  vpc_id          = module.dev_vpc_1.vpc_id
  private_servers = [module.dev_compute_1.private_servers]
}

module "dev_elb_1_public" {
  source          = "../modules/elb"
  environment     = var.environment
  nlbname         = var.nlbname_public
  subnets         = module.dev_vpc_1.public_subnets_id
  tgname          = var.tgname_public
  vpc_id          = module.dev_vpc_1.vpc_id
  private_servers = [module.dev_compute_1.public_servers]
}

module "dev_iam_1" {
  source              = "../modules/iam"
  environment         = var.environment
  rolename            = var.rolename
  instanceprofilename = var.instanceprofilename
}
