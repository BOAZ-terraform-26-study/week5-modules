## A-5 기록
- plan이 센 리소스 개수 (network 만): 7
- module.network is object with ___ attributes  의 숫자: 3
- 그 숫자가 무엇의 개수인가: 모듈의 output 개수
- 모듈 안 리소스를 밖에서 쓰려면 무엇을 해야 하는가: output을 추가한다

---

## B-5 기록

- plan  마지막 줄: Plan: 9 to add, 0 to change, 0 to destroy.state list  줄 수: 10  (리소스 9  + 데이터 소스 1 )
- module.network. 로 시작하는 줄 수: 7  / module.compute. 로 시작하는 줄 수: 3
- 서브넷 주소 두 줄을 그대로 옮겨 적기: ______________________________
- terraform output subnet_ids 가 찍은 key 두 개: "ap-northeast-2a", "ap-northeast-2c"

- 버킷 안에 있는 .tfstate  객체 key 를 전부 적기: 
week03/app/terraform.tfstate
week04/app/terraform.tfstate
week05/prod/terraform.tfstate

- week4의 주소와 비교해 무엇이 달라졌는지 한 문장: app이 아닌 prod가 붙음

---

## B-6 기록
- sensitive  표시가 붙어 있는 파일 두 개: /envs/prod/variables.tf, /modules/compute/variables.tf
- plan  에서 ingress  가 어떻게 보였는가: (sensitive value)
- state pull  에서 공인 IP 가 평문으로 보였는가: O
- sensitive  가 막는 것과 못 막는 것을 한 문장으로: plan, output 출력은 막지만, 평문 저장은 못막음.
- public_subnet_id  와 subnet_ids["..."]  의 차이를 한 문장으로: public_subnet_id를 쓰는 경우, 사전순 첫 key 를 지우면 가리키는 리소스가 조용히 바뀐다.