# ---------------------------------------------------------------------------
# envs/prod/outputs.tf : 모듈이 내준 값을 루트 밖으로 다시 내는 파일
#
# 모듈의 outputs.tf 는 모듈 밖으로 내주는 문이고, 이 파일은 terraform output
# 명령과 사람에게 내주는 문입니다. 층이 달라서 두 번 적습니다.
#
# 모듈이 output 으로 내주지 않은 값은 여기서도 쓸 수 없습니다.
# module.network.aws_route_table.public.id 처럼 안쪽 리소스를 직접 가리키면
# Unsupported attribute 오류가 납니다. 실습워크북 A-5 에서 직접 봅니다.
#
# 실습워크북 B-3 을 따라 TODO ⑥ 을 채우세요.
# ---------------------------------------------------------------------------

# TODO(B-3) ⑥: 아래 셋을 재노출하세요.
#
#   vpc_id              <- network 모듈의 vpc_id
#   subnet_ids          <- network 모듈의 subnet_ids
#   instance_public_ip  <- compute 모듈의 public_ip
