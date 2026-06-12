module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
}

module "launch_template" {
  source = "./modules/launch-template"
  security_group_ids = [module.security_group.instance_sg_id]
}

module "security_group" {
  source = "./modules/security-group"
  vpc_id = module.vpc.vpc_id
}

module "alb" {
  source         = "./modules/alb"
  vpc_id         = module.vpc.vpc_id
  sg_id          = module.security_group.sg_id
  public_subnets = module.vpc.public_subnet_ids
}

module "asg" {
  source             = "./modules/asg"
  public_subnets     = module.vpc.public_subnet_ids
  target_group_arn   = module.alb.target_group_arn
  launch_template_id = module.launch_template.launch_template_id
}