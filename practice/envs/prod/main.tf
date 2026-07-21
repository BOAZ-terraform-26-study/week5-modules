# TODO(L1): network 모듈 호출 (source = "../../modules/network")
#   vpc_cidr, subnet_cidrs, name_prefix=local.name_prefix, tags=local.common_tags 전달
# module "network" { ... }

# TODO(L1): compute 모듈 호출 (source = "../../modules/compute")
#   vpc_id/subnet_id 는 module.network 의 output 을 전달
#   my_ip, name_prefix, tags 전달
# module "compute" { ... }
