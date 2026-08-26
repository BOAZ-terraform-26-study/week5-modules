# ---------------------------------------------------------------------------
# modules/compute/main.tf : 시큐리티 그룹과 EC2 를 만드는 모듈
#
# provider 는 두지 않습니다. 루트(envs/prod)에서 상속됩니다. 개념워크북 5번.
#
# 이 모듈은 자기가 어느 VPC 의 어느 서브넷에 들어가는지 모릅니다.
# ID 두 개(var.vpc_id · var.subnet_id)를 받아서 그대로 씁니다.
# outputs.tf 가 aws_instance.web 이라는 이름을 요구합니다.
#
# 실습워크북 B-1 을 따라 TODO ④ 를 채우세요.
# ---------------------------------------------------------------------------

# TODO(B-1) ④: 데이터 소스 하나와 리소스 두 개를 작성하세요.
#
#   data.aws_ami.al2023      most_recent = true · owners = ["amazon"]
#                            filter 로 name = "al2023-ami-2023.*-x86_64"
#                            이름을 2023. 까지 고정하는 것이 중요합니다. al2023-ami-*-x86_64
#                            로 두면 ECS 전용(루트 30GiB) 이미지가 걸립니다. week3 개념워크북 15번
#   aws_security_group.web   vpc_id = var.vpc_id
#                            ingress 22번을 "${var.my_ip}/32" 에만 엽니다
#                            egress 는 전체 허용
#   aws_instance.web         ami                    = data.aws_ami.al2023.id
#                            instance_type          = var.instance_type
#                            subnet_id              = var.subnet_id
#                            vpc_security_group_ids = [aws_security_group.web.id]
#                            root_block_device 로 gp3 8GiB 를 명시합니다.
#                              delete_on_termination = true 도 함께 둡니다
#                            metadata_options 로 http_tokens = "required" (IMDSv2)
#
#   태그는 merge(var.tags, { Name = "${var.name_prefix}-web" }) 형태로 답니다.
#
#   EC2 는 1대만 유지합니다. for_each 나 count 를 붙이면 요금이 대수만큼 곱해집니다.
