# Week 5. 모듈화 (prod 지향) `[대면]`

> 📘 **[이번 주 강의자료(핸즈온 워크북) PDF »](./lecture/강의자료.pdf)** — 실습은 이 문서를 위에서 아래로 따라가며 진행합니다.

> 이번 주가 끝나면: **반복 코드를 재사용 모듈로 추출하고, `envs/prod`에서 모듈을 조합해 환경을 구성할 수 있다.**

## 0. 메타 정보
| 항목 | 내용 |
|------|------|
| 일시 | 2026-MM-DD · 60분 |
| 방식 | **대면** |
| 선행 | week4 완료 |
| 산출물 | 실습 PR + 워크북 · **과제③ 출제** |

## 1. 학습 목표 (측정 가능)
- [ ] module의 input(variables)/output 계약을 설계할 수 있다
- [ ] 로컬 상대경로 `source`로 모듈을 호출할 수 있다
- [ ] 모듈 간 데이터 전달(`module.network.public_subnet_id` -> compute)을 할 수 있다
- [ ] 리팩터링 시 `moved` 블록으로 리소스 주소 변경을 무중단 처리할 수 있다 (심화)

## 2. 사전 예습 (필수)
- HashiCorp: [Modules](https://developer.hashicorp.com/terraform/language/modules), [Module creation](https://developer.hashicorp.com/terraform/tutorials/modules/module-create) (20분)
- 예습 체크: "모듈 안에 provider 블록을 넣지 않는 이유"를 안다

## 3. 진행 타임박스 (60분)
| 시간 | 구성 | 내용 |
|------|------|------|
| 0~10분 | 회고 | 랜덤 지목 |
| 10~55분 | 실습 45분 | network/compute 모듈 추출 -> envs/prod에서 조합 |
| 55~60분 | 마무리 | 과제③ 브리핑, 6주차 예고 |

## 4. 실습 개요 — 폴더 구조
```
practice/
 ├─ modules/
 │   ├─ network/   # VPC, subnet(for_each), IGW, route
 │   └─ compute/   # SG, EC2
 └─ envs/
     └─ prod/      # module "network" + module "compute" 조합, backend.tf
```
`envs/prod/main.tf`:
```hcl
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
```
```bash
cd practice/envs/prod
terraform init && terraform apply
terraform destroy
```

## 5. 체크포인트 (DoD)
- [ ] network/compute 모듈로 분리됨 (provider는 root에만)
- [ ] `envs/prod`에서 module 조합으로 apply 성공
- [ ] module output이 root output으로 재노출됨
- [ ] **`destroy` 완료 확인**

## 6. 트러블슈팅 FAQ
| 증상 | 원인 | 해결 |
|------|------|------|
| 모듈 바꿨는데 반영 안 됨 | init 안 함 | 모듈 변경 후 `terraform init` 재실행 |
| `source` not found | 경로 오타 | 상대경로 확인 (`../../modules/...`) |
| 리팩터링 시 리소스 재생성 | 주소 변경 | `moved` 블록 사용 (또는 학습용이니 destroy 후 재apply) |

## 7. 심화 도전과제 (Optional ⭐)
- L2: `envs/dev` 추가해 같은 모듈을 다른 변수로 재사용
- L3-⭐: `moved` 블록으로 week4 코드에서 무중단 이전, 모듈 변수 `validation`

## 8. 다음 주 예고 & 준비물
- Week6(대면): State Drift & 기존 import
- 예습: drift 개념, `terraform plan` 읽는 법, `terraform import` 문법

---
> ⚠️ **비용 주의**: 리팩터링 중 EC2가 잠깐 겹칠 수 있음(create 후 destroy). 종료 시 확인. EC2 1대 유지.
> **공통 규칙**: 자격증명/secret 커밋 금지 · `destroy` 확인 · 코드는 PR로
