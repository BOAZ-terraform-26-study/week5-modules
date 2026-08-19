# ---------------------------------------------------------------------------
# envs/prod/main.tf : 모듈을 조립하는 파일
#
# 이 파일에는 resource 블록이 하나도 없습니다. module 블록 둘만 있습니다.
# 두 모듈의 결합은 이 파일에서만 일어납니다. 개념워크북 8번.
#
# module 블록을 추가한 뒤에는 terraform init 을 다시 돌려야 합니다.
# 안 돌리면 Module not installed 로 막힙니다. 개념워크북 11번.
#
# 실습워크북 A-4 / B-2 를 따라 TODO ③⑤ 를 채우세요. 한 번에 둘 다 적지 말고
# network 를 먼저 붙여 plan 이 7 to add 인 것을 확인한 뒤 compute 를 붙이세요.
# ---------------------------------------------------------------------------

# TODO(A-4) ③: network 모듈을 호출하세요.
#
#   source = "../../modules/network"
#     ./ 나 ../ 로 시작하지 않으면 Terraform 이 원격 모듈 주소로 해석합니다.
#     envs/prod 에서 modules/ 까지는 두 단계를 올라갑니다.
#
#   넘길 것: vpc_cidr · subnet_cidrs · name_prefix = local.name_prefix
#            tags = local.common_tags
#
# module "network" { ... }

# TODO(B-2) ⑤: compute 모듈을 호출하세요.
#
#   vpc_id 와 subnet_id 는 module.network 의 output 을 그대로 넘깁니다.
#     vpc_id    = module.network.vpc_id
#     subnet_id = module.network.public_subnet_id
#   이 두 줄이 오늘 만드는 유일한 모듈 사이 연결입니다. 참조이므로 순서는
#   Terraform 이 스스로 정합니다. depends_on 을 적지 않습니다.
#
#   넘길 것: 위 둘 + my_ip · name_prefix · tags
#
# module "compute" { ... }
