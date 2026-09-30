# ---------------------------------------------------------------------------
# modules/network/main.tf: VPC 와 서브넷을 생성하는 모듈
#
# 이 폴더에는 provider 도 backend 도 정의하지 않습니다. 루트(envs/prod)의 provider 가
# 상속됩니다. 개념워크북 5번을 참조하세요.
#
# 입력은 variables.tf, 출력은 outputs.tf 에 이미 정해져 있습니다. 둘은 수정하지 마세요.
# outputs.tf 가 aws_vpc.this 와 aws_subnet.public 이라는 리소스 이름을 참조하므로,
# 리소스 이름을 다르게 지으면 output 이 그 리소스를 찾지 못합니다.
#
# 실습워크북 A-3 을 따라 TODO ② 를 작성하세요.
# ---------------------------------------------------------------------------

# TODO(A-3) ②: 리소스 다섯 개를 작성하세요.
#
#   aws_vpc.this                        cidr_block = var.vpc_cidr
#                                       enable_dns_hostnames = true
#   aws_internet_gateway.this           vpc_id = aws_vpc.this.id
#   aws_subnet.public                   for_each = var.subnet_cidrs
#                                         each.key   = AZ 이름 ("ap-northeast-2a")
#                                         each.value = CIDR    ("10.0.1.0/24")
#                                       map_public_ip_on_launch = true
#   aws_route_table.public              route 로 0.0.0.0/0 을 IGW 로 전달합니다
#   aws_route_table_association.public  for_each = aws_subnet.public
#
#   태그는 리소스마다 아래 형태로 작성합니다. locals 는 폴더 경계를 넘지 않으므로
#   name_prefix 와 tags 를 변수로 받습니다. 개념워크북 6번을 참조하세요.
#     tags = merge(var.tags, { Name = "${var.name_prefix}-vpc" })
#
#   state 에는 인덱스가 아니라 key 로 기록되고, 앞에 모듈 경로 접두사가 붙습니다.
#     module.network.aws_subnet.public["ap-northeast-2a"]
