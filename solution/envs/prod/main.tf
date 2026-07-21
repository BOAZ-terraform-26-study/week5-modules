module "network" {
  source       = "../../modules/network"
  vpc_cidr     = var.vpc_cidr
  subnet_cidrs = var.subnet_cidrs
  name_prefix  = local.name_prefix
  tags         = local.common_tags
}
module "compute" {
  source      = "../../modules/compute"
  vpc_id      = module.network.vpc_id
  subnet_id   = module.network.public_subnet_id
  my_ip       = var.my_ip
  name_prefix = local.name_prefix
  tags        = local.common_tags
}
