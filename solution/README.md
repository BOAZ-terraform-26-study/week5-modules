# Week5 정답 코드

```bash
cd envs/prod
cp example.tfvars terraform.tfvars   # project_name · my_ip 를 본인 값으로
terraform init && terraform apply
terraform destroy
```

`backend.tf` 의 `bucket` 과 `dynamodb_table` 은 예시 값입니다. week3 의 `bootstrap` 스택에서
`terraform output -raw backend_config` 로 나오는 본인 값으로 바꾸세요. `key` 는
`week05/prod/terraform.tfstate` 이므로 건드리지 않습니다.

모듈에는 provider 블록을 넣지 않습니다(root 에서 상속). EC2 1대 유지.

자격증명 없이 코드만 검토할 때는 backend 를 건너뛸 수 있습니다.

```bash
cd envs/prod
terraform init -backend=false && terraform validate
```
