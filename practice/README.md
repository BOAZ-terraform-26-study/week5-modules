# Week5 실습 — 모듈화
1. `modules/network/main.tf`, `modules/compute/main.tf` 채우기 (입출력 계약은 주어짐)
2. `envs/prod/main.tf` 에서 두 모듈 조합
```bash
cd envs/prod
cp example.tfvars terraform.tfvars
terraform init && terraform apply
terraform destroy
```
막히면 `../solution/`.
