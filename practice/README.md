# Week5 실습: 모듈화

실습 순서와 기대 출력은 `lecture/실습워크북.md` 에 있습니다. 이 파일은 요약입니다.

`terraform` 명령을 치는 곳은 `envs/prod` 한 곳뿐입니다. `modules/` 안에서는 실행하지 않습니다.

1. `envs/prod/backend.tf` 의 `CHANGE-ME` 두 곳을 week3 버킷·테이블 이름으로 (TODO ①)
2. `modules/network/main.tf` 채우기 (TODO ②)
3. `envs/prod/main.tf` 에 network 모듈 호출 (TODO ③)
4. `modules/compute/main.tf` 채우기 (TODO ④)
5. `envs/prod/main.tf` 에 compute 모듈 호출 (TODO ⑤)
6. `envs/prod/outputs.tf` 재노출 (TODO ⑥)

입출력 계약(`modules/*/variables.tf` · `modules/*/outputs.tf`)은 주어져 있으니 고치지 마세요.

```bash
cd envs/prod
cp example.tfvars terraform.tfvars   # project_name · my_ip 를 본인 값으로
terraform init                        # module 블록을 추가한 뒤에는 매번 다시
terraform validate
terraform plan                        # Plan: 9 to add  <- 아니면 멈춤
terraform apply
terraform state list                  # 10줄. 전부 module. 로 시작
terraform destroy
```

막히면 `../solution/`. EC2 는 1대만 유지합니다.
