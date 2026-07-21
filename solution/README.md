# Week5 정답 코드
```bash
cd envs/prod
cp example.tfvars terraform.tfvars
terraform init && terraform apply
terraform destroy
```
모듈에는 provider 블록을 넣지 않습니다(root에서 주입). EC2 1대 유지.
