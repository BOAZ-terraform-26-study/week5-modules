# 스터디 워크북 작성 규칙

BOAZ 테라폼 스터디 강의자료(`lecture/개념워크북.md`, `lecture/실습워크북.md`)를 쓰거나 고칠 때 지키는 규칙입니다.
1~12절과 16절은 주차가 바뀌어도 같습니다. 13~15절과 17절은 이 주차(week5 모듈화)의 사실을 담고 있으니, 새 주차 리포를 만들면 그 네 절만 갈아 끼우세요.

---

## 1. 문체
존댓말로 씁니다. `~합니다` / `~됩니다` / `~하세요`. 개조식(`~함`, `~할 것`)은 쓰지 않습니다.
예외는 두 군데입니다. 표 안의 셀과 `[관찰 ✍️]`의 빈칸 문항은 명사형으로 끝내도 됩니다.

학습자에게 직접 말을 겁니다. "설정한다"보다 "설정해보세요", "확인할 수 있다"보다 "확인할 수 있습니다".

1인칭 "저는"은 강사가 실제로 한 행동을 가리킬 때만 씁니다. 예를 들어 "저는 이 배열을 적은 적이 없습니다"처럼 학습자가 스스로 확인할 수 있는 사실을 짚을 때입니다. 습관적으로 붙이지 않습니다.

---

---

## 2. 문장부호
**em dash(`—`)와 en dash(`–`)는 쓰지 않습니다.** 한국어 자판으로는 거의 치지 않는 문자라, 문서 전체에서 기계가 쓴 티가 가장 크게 나는 지점입니다. 상황별로 이렇게 바꿉니다.

| 쓰고 싶은 자리 | 대신 |
|--------------|------|
| 제목의 부제 | `:` (`## 오늘의 지도: 의존성 지도`) |
| 문장 중간 부연 | 문장을 끊고 `.` 또는 쉼표 |
| 목록 항목의 설명 앞 | 공백만 두거나 마침표로 끊기 |
| 표에서 "해당 없음" | `-` |
| 용어 정의 | `> **용어 · CIDR:** 정의` |

곧은 따옴표 `"`만 씁니다. 곱슬따옴표 `“ ”`는 쓰지 않습니다.
나열할 때 가운뎃점 `·`는 한국어에서 자연스러우니 그대로 씁니다(`VPC · 서브넷 · IGW`).

---

---

## 3. 강조
볼드는 한 문단에 한두 곳까지입니다. 문장 전체를 볼드로 감싸지 않습니다. 다 강조하면 아무것도 강조되지 않습니다.

볼드를 쓸 자리는 셋입니다. 안 지키면 사고가 나는 한 줄, 표의 첫 열, 학습자가 대조해야 하는 숫자.

"가장 중요한", "오늘의 핵심", "하이라이트" 같은 최상급 표현은 **문서 전체에서 한 번만** 씁니다. 여러 번 나오면 전부 무게를 잃습니다.

이모지는 기능 표기에만 씁니다. ⭐는 난이도, ✍️는 기록해야 하는 곳. 제목 장식으로는 쓰지 않습니다.

---

---

## 4. 쓰지 않는 글쓰기 습관
아래 패턴은 내용이 맞더라도 다시 씁니다.

| 하지 말 것 | 왜 | 대신 |
|-----------|-----|------|
| 모든 섹션을 같은 틀로 시작 (`**한 줄 요약: ...**`) | 반복되는 순간 기계가 찍어낸 티가 납니다 | 요약을 첫 문단에 녹여서 씁니다 |
| 수사 의문문 뒤 자문자답 ("왜 그럴까요? 바로 ~때문입니다") | 설명을 늘리기만 합니다 | 그냥 서술합니다 |
| `~가 아니라 ~다` 부정 대구의 반복 | 한 문서에 서너 번 나오면 상투구가 됩니다 | 문서당 한두 번까지 |
| 억지로 세 개 맞추기 | 두 개면 두 개, 네 개면 네 개로 씁니다 | 실제 개수대로 |
| `**① 제목.**` 인라인 헤더 목록 | 목록이 아니라 문단으로 읽히는 내용입니다 | "첫째, ~입니다" 서술형 |
| 제목 바로 밑에 제목을 되풀이하는 한 줄 | 자리만 차지합니다 | 바로 본문으로 |
| 문장 끝에 붙이는 짧은 부정구 ("추측 없이", "군더더기 없이") | 문장이 아니라 표어입니다 | 온전한 절로 씁니다 |

학습자가 실제로 품을 법한 질문 한두 개를 던지는 건 괜찮습니다. 금지하는 건 답을 이미 아는 척하는 연출용 질문입니다.

---

---

## 5. 문서 구조
강의자료는 두 파일로 나눕니다. 섞으면 실습 중에 찾기가 어렵습니다.

- `lecture/개념워크북.md` : 설명. 라이브에서 짚는 분량과 나머지를 구분해서 표시합니다.
- `lecture/실습워크북.md` : 손으로 치는 것. 위에서 아래로 그대로 따라가면 끝나야 합니다.

문단 앞에 붙이는 태그는 고정입니다.

| 태그 | 뜻 |
|------|-----|
| `[개념]` | 설명 |
| `[실습]` | 직접 손으로 칩니다 |
| `[확인]` | 화면에 나온 것과 문서를 대조합니다 |
| `[함정]` | 미리 알고 피해 갑니다 |
| `[관찰 ✍️]` | 빈칸을 채웁니다. 제출물이 됩니다 |
| `(심화 ⭐)` | 먼저 끝낸 사람만. 안 해도 목표는 달성 |

개념워크북은 `Part N`, 실습워크북은 `Block A / B / C`로 묶습니다.
개념워크북의 **Part 0은 항상 용어 사전**입니다. 그 주차에 처음 나오는 클라우드 용어를 실습 전에 다 풀어둡니다.
실습워크북은 Block A 워크스루(강사와 함께), Block B 각자 진행, Block C 정리(`destroy`와 잔존 점검) 순서입니다.

---

---

## 6. GitHub alert 사용 기준
용도를 섞으면 학습자가 어느 박스를 읽어야 할지 판단하지 못합니다.

| 종류 | 쓰는 경우 |
|------|----------|
| `[!NOTE]` | 배경지식, 용어 정의, 몰라도 되는 곁가지 |
| `[!TIP]` | 안 해도 되지만 알면 편한 것 |
| `[!IMPORTANT]` | 안 하면 다음 단계가 막히는 것, 체크포인트 |
| `[!WARNING]` | 하면 시간을 날리는 것 |
| `[!CAUTION]` | 하면 돈이 나가거나 비밀이 새는 것 |

한 섹션에 alert가 넷을 넘으면 본문으로 내립니다. 박스가 많아지면 본문이 안 읽힙니다.

---

---

## 7. 처음 배우는 사람 기준으로 쓰기
**본문은 실제 기술 용어로 씁니다.** 독자는 IT 전공 스터디원이라 리소스, 참조, 간선, state, 서브넷 같은 말을 그대로 소화합니다. 쉽게 쓴다고 새 낱말을 지어내면(부품, 화살표, 장부) 오히려 어색해지고, 나중에 공식 문서를 볼 때 다시 번역해야 합니다.

| 지어낸 말 | 본문에서 쓸 말 |
|----------|--------------|
| 부품 | 리소스 |
| 화살표 | 참조 (그래프를 말할 때는 간선) |
| 화살표 지도 | 의존성 지도 |
| 장부 | state |
| 잎사귀 | 리프 노드(leaf) |
| 부지 · 구역 · 정문 · 이정표 · 경비원 | VPC · 서브넷 · IGW · 라우트 테이블 · 시큐리티 그룹 |

비유는 버리지 않되 **자리를 제한합니다.** 용어를 처음 소개하는 표의 "비유" 열, 도입부 도식의 라벨, 용어 정의 박스 안까지입니다. 그 밖의 본문에서 비유어를 실제 이름 대신 쓰지 않습니다. 비유를 쓸 때는 하나의 세계관으로 통일하고 중간에 갈아타지 않습니다.

용어를 일괄 치환할 때는 **`.tf` 주석, `scripts/*.sh`, `README.md`, PR 템플릿까지 같이 바꿉니다.** 워크북만 고치면 인용한 코드와 어긋납니다. 그리고 치환 뒤에는 조사를 반드시 눈으로 확인하세요. `⑦을 긋고`를 기계적으로 바꾸면 `⑦ 를 잇고`처럼 조사가 틀어집니다.

- 용어는 첫 등장에서 정의합니다. `> **용어 · CIDR (Classless Inter-Domain Routing):** IP 주소 범위를 적는 방법.`
- 명령마다 **기대 출력을 그대로 붙여둡니다.** 학습자가 자기 화면과 대조할 수 있어야 합니다.
- 문서 앞쪽에 **그날 나와야 하는 숫자를 못 박는 표**를 둡니다(`Plan: 5 to add`, `state list` 7줄 같은 것). 다르면 멈추라고 씁니다.
- 실습 스텝은 "지금 하는 일은 ~입니다" 한 줄로 시작합니다.
- ASCII 다이어그램을 쓸 때는 한글을 2칸으로 계산해서 정렬을 맞춥니다.

---

---

## 8. 사실과 검증
숫자, 리소스 ID, 비용, 에러 메시지는 **실제로 조회하거나 재현한 값만** 씁니다. 그럴듯하게 지어내지 않습니다.
문서 끝에 검증 환경을 각주로 남깁니다.

> 이 문서의 plan 출력, AMI ID, AZ, 비용은 서울 리전, AWS provider 6.57.1, Terraform 1.15.8 에서 실제로 조회·검증한 값입니다.

확인하지 못한 것은 아예 쓰지 않습니다. "아마", "일반적으로"로 덮지 않습니다.

---

---

## 9. 실습 자료의 안전 규칙
과금되는 리소스를 만드는 주차라면 아래가 빠지면 안 됩니다.

- 시간당 비용 표와 "지우지 않고 한 달 두면 얼마" 비교
- `destroy` 블록. 실습의 마지막이 아니라 **독립된 필수 블록**으로 둡니다
- state가 빈 것과 계정이 빈 것을 따로 확인시키기
- 올리면 안 되는 값 명시. 공인 IP, 계정번호 12자리, `terraform.tfvars`, `terraform.tfstate`, `state.json`
- 제출물에 넣기 전 마스킹 명령을 문서에 직접 적어두기

---

---

## 10. 주차 사이 연결
- 문서 앞에서 **지난 주차가 "다음에 설명하겠다"고 넘긴 것을 회수하는 표**를 만듭니다.
- 문서 끝에 **다음 주차 예고 표**를 둡니다. 왼쪽에 오늘 본 것, 오른쪽에 그것이 다음 주에 만드는 문제.
- 이전 주차에서 이미 설명한 것은 다시 설명하지 않고 위치만 가리킵니다.

---

---

## 11. 코드와 파일
- `practice/`는 `# TODO` 빈칸 스켈레톤, `solution/`은 정답. 둘 다 유지합니다.
- 워크북이 인용하는 코드 조각은 실제 `.tf` 파일과 한 글자도 다르면 안 됩니다. 한쪽을 고치면 다른 쪽도 고칩니다.
- `.tf` 주석과 `scripts/*.sh` 주석에도 위 문장부호 규칙을 그대로 적용합니다.
- 제출은 `submissions/{github-id}/`. `practice/`를 직접 고쳐 올리게 하지 않습니다. 머지되는 순간 다음 사람의 빈칸이 사라집니다.

---

---

## 12. PDF 배포본
`.md`가 원본이고 PDF는 배포본입니다. PDF만 고치는 일은 없습니다.

`.md`를 HTML로 바꾼 뒤 headless Chrome 인쇄로 뽑습니다. 인쇄 CSS에서 지킬 것이 셋입니다.

- **페이지 하단에 빈 공백을 만들지 않습니다.** `h1`에 `page-break-before: always`를 걸지 않고, 표·코드블록·alert에 `page-break-inside: avoid`를 걸지 않습니다. 큰 블록이 통째로 다음 장으로 밀리면서 앞 장이 비어버립니다.
- 표는 쪼개지되 행 중간에서는 자르지 않습니다. `tr { page-break-inside: avoid }`, `thead { display: table-header-group }`.
- 코드블록 안 한글은 모노스페이스 2칸 폭에 맞춥니다. 한글을 별도 `@font-face`로 잡고 `size-adjust: 120.4%`를 줍니다. 안 그러면 ASCII 다이어그램의 세로선이 어긋납니다.

`.md`를 고쳤으면 PDF도 같이 다시 만듭니다.

---

> `lecture/build-pdf.sh` 와 `lecture/style.css` 가 리포에 있습니다. `.md` 를 고쳤으면 리포 루트에서 `./lecture/build-pdf.sh` 를 돌려 PDF 를 다시 뽑으세요. 인자 없이 돌리면 `lecture/*.md` 두 편을 모두 처리합니다. 하나만 뽑으려면 `./lecture/build-pdf.sh 개념워크북` 처럼 이름을 줍니다.
>
> `style.css` 는 week4 에서 그대로 가져온 것이 아닙니다. week4 의 파일에는 `table` · `pre` · `.alert` 에 `break-inside: avoid-page` 가 걸려 있어서 이 절의 규칙 1과 어긋났습니다. week5 의 `style.css` 는 그것을 빼고 `thead { display: table-header-group }` 과 `tbody tr { break-inside: avoid }` 로 대신하며, 한글 모노스페이스 폭은 `MonoKR` `@font-face` 의 `size-adjust: 120.4%` 로 맞춥니다.

---

## 13. 리포 구조: 한 곳을 고치면 같이 고쳐야 하는 파일
하나의 주차가 여러 산출물로 흩어져 있습니다. 사실 하나를 바꾸면 그것을 인용한 곳을 모두 따라 고쳐야 합니다.

| 파일 | 역할 | 무엇을 인용하고 있는지 |
|------|------|--------------------|
| `README.md` | 세션 진행표. 타임박스와 DoD | plan 숫자 · state 줄 수 · 워크북 링크 |
| `lecture/개념워크북.md` | 설명. Part 0~7 | `.tf` 코드 조각 · 비용 · 오류 메시지 |
| `lecture/실습워크북.md` | 손으로 치는 절차. Block A/B/C | TODO 번호 · 기대 출력 · 마스킹 명령 |
| `practice/**/*.tf` | `# TODO` 빈칸 스켈레톤 | 주석이 실습워크북 스텝 번호를 가리킵니다 |
| `solution/**/*.tf` | 정답 | `practice/`와 TODO를 채운 것만 달라야 합니다 |
| `practice/README.md` · `solution/README.md` | 폴더별 요약 | TODO 번호 · plan 숫자 · state 줄 수 |
| `assignment/ASSIGNMENT.md` | 과제③ 출제 | 제출은 `assignments` 리포의 `round3-week5/{github-id}/` |
| `.github/pull_request_template.md` | DoD 체크리스트 | destroy 확인 |

TODO 번호는 `practice/`와 실습워크북이 공유하는 유일한 약속입니다. 한쪽만 바꾸면 대응이 끊어집니다. 번호는 실습 순서대로 답니다.

| TODO | 파일 | 스텝 | 내용 |
|------|------|------|------|
| ① | `envs/prod/backend.tf` | A-2 | `CHANGE-ME` 두 곳을 week3 버킷과 테이블 이름으로 |
| ② | `modules/network/main.tf` | A-3 | VPC · IGW · 서브넷(`for_each`) · 라우트 테이블 · 연결 |
| ③ | `envs/prod/main.tf` | A-4 | `module "network"` 호출 |
| ④ | `modules/compute/main.tf` | B-1 | `data.aws_ami` · 시큐리티 그룹 · EC2 1대 |
| ⑤ | `envs/prod/main.tf` | B-2 | `module "compute"` 호출. `module.network` 의 output 을 넘깁니다 |
| ⑥ | `envs/prod/outputs.tf` | B-3 | 모듈 output 을 루트 output 으로 재노출 |

`modules/*/variables.tf` 와 `modules/*/outputs.tf` 는 입출력 계약이라 완성된 상태로 제공합니다. 수강생이 채우는 것은 `main.tf` 세 개와 `backend.tf` 뿐입니다.

이 리포에는 `scripts/check-leftover.sh` 와 `submissions/README.md` 와 `lecture/강사스크립트.md` 가 없습니다. 잔존 점검은 실습워크북 C-2의 `aws` CLI 명령 네 개가 대신합니다.

---

## 14. 자주 쓰는 명령
워크북이 인용한 코드가 실제 `.tf` 와 어긋나지 않았는지 확인합니다. 11절을 지키는 방법입니다.

```bash
diff -u practice/modules/network/main.tf solution/modules/network/main.tf | grep -v '^[-+]#'
grep -n 'for_each\|each.key\|each.value\|merge(' lecture/실습워크북.md solution/modules/*/main.tf
```

문장부호 규칙(2절)과 강조 규칙(3절)은 기계로 셉니다.

```bash
grep -rn '—\|–\|“\|”' lecture/*.md README.md practice/ solution/     # 아무것도 안 나와야 합니다
grep -c '오늘의 핵심\|가장 중요한\|하이라이트' lecture/개념워크북.md    # 문서당 1 이하
```

AWS 자격증명 없이 정답 코드를 검증합니다. 과금이 없습니다.

```bash
cd solution/envs/prod && terraform init -backend=false && terraform validate
```

오류 메시지를 워크북에 싣기 전에는 임시 사본에서 실제로 재현합니다(8절). 리포 안에서 돌리면 `.terraform/` 이 남습니다.

```bash
D=$(mktemp -d); mkdir -p "$D/envs/prod" "$D/modules/network" "$D/modules/compute"
cp solution/envs/prod/*.tf "$D/envs/prod/"
cp solution/modules/network/*.tf "$D/modules/network/"
cp solution/modules/compute/*.tf "$D/modules/compute/"
cd "$D/envs/prod" && terraform init -backend=false && terraform validate
```

포맷은 리포 루트에서 재귀로 돌립니다.

```bash
terraform fmt -recursive
terraform fmt -check -recursive
```

`terraform apply` 와 `terraform destroy` 같은 실제 인프라 변경 명령은 사용자가 직접 실행하도록 안내하고, 임의로 수행하지 않습니다.

---

## 15. 이 주차에 못 박아둔 값
문서에 흩어져 있는 숫자입니다. 하나를 바꾸면 13절 표의 인용처를 전부 따라 고칩니다.

| 항목 | 값 | 어디에 걸려 있는지 |
|------|-----|-----------------|
| 검증 환경 | Terraform 1.15.8 · AWS provider 6.61.0 · `ap-northeast-2` · `darwin_arm64` | 워크북 두 편의 끝 각주 |
| `required_version` | `>= 1.9.0` | `practice/envs/prod/versions.tf` · `solution/envs/prod/versions.tf` |
| provider 제약 | `~> 6.0` | 같은 두 파일 |
| backend key | `week05/prod/terraform.tfstate` | week4 의 `week04/app/...` 을 두면 지난 주 state 를 인수합니다 |
| state 저장소 | week3 의 `boaz26-w3-{id}-tfstate` · `boaz26-w3-{id}-tflock` | 7주차까지 남깁니다. 새로 만들지 않습니다 |
| network 만 `plan` | `Plan: 7 to add, 0 to change, 0 to destroy.` | 실습워크북 A-4 |
| 전체 `plan` | `Plan: 9 to add, 0 to change, 0 to destroy.` | README · 실습워크북 B-4 · `practice/README.md` |
| `state list` | **10줄** (리소스 9 + 데이터 소스 1) | 같은 세 곳. week4는 11줄이었습니다 |
| 서브넷 주소 | `module.network.aws_subnet.public["ap-northeast-2a"]` | 실습워크북 ④ 지도 · B-5 |
| EC2 비용 | 시간당 $0.0190 · 한 달 방치 약 $13.87 | 개념워크북 15번 · 실습워크북 도입 |
| AMI 이름 필터 | `al2023-ami-2023.*-x86_64` | `modules/compute/main.tf` 양쪽 · 실습워크북 B-1 |

`state list` 가 10줄인 것은 week4에 있던 `data.aws_availability_zones` 가 이 주차 코드에 없기 때문입니다. `subnet_cidrs` 의 key 가 AZ 이름이라 AWS 에 목록을 묻지 않습니다.

실행해서 얻은 것은 `init` 의 모듈 초기화 두 줄, `validate` 의 성공, 그리고 오류 메시지 다섯 종류(`Unsupported argument` · `Missing required argument` · `Invalid module source address` · `Unsupported attribute` · `Module not installed`)입니다. 나머지 숫자는 코드에서 센 값이고 워크북 각주에 그렇게 적혀 있습니다. 8절 규칙대로 이 구분을 지우지 마세요.

---

## 16. 배포하지 않는 파일
`.gitignore` 가 막고 있는 것 중에 착각하기 쉬운 것들입니다.

| 파일 | 왜 커밋하지 않는지 |
|------|-----------------|
| `*.tfvars` (`example.tfvars` 만 예외) | 공인 IP 가 들어갑니다 |
| `*.tfstate` · `*.tfstate.*` | state 는 평문 JSON 이고 공인 IP 가 그대로 들어 있습니다 |
| `**/.terraform/` | 프로바이더 바이너리와 모듈 캐시입니다 |
| `*.tfplan` | 계획 파일에도 값이 들어갑니다 |

`.terraform.lock.hcl` 은 무시 목록에 넣지 않습니다. 다만 이 리포에는 아직 커밋된 lock 파일이 없습니다. 넣기로 한다면 `practice/envs/prod` 와 `solution/envs/prod` 양쪽에 함께 넣어야 합니다. 한쪽에만 있으면 두 폴더가 서로 다른 provider 버전으로 돌게 됩니다.

week4 리포의 `.gitignore` 에 있던 `backend.hcl` · `*.pem` · `state.json` · `lecture/*.html` · `lecture/fonts/` 는 이 리포에도 모두 들어 있습니다. `lecture/*.pdf` 는 배포본이라 무시하지 않고 커밋합니다.

---

## 17. 이 주차의 모듈 아키텍처: 바꾸면 안 되는 구조
`envs/prod` 가 루트 모듈이고 `modules/network` 와 `modules/compute` 를 로컬 상대경로 `../../modules/...` 로 호출합니다. 두 모듈의 결합은 `envs/prod/main.tf` 에서만 일어나며, `module.network` 의 output 을 `module.compute` 의 input 으로 전달합니다.

```
envs/prod (루트: provider · backend · variables · locals)
 ├─ module "network"  in: vpc_cidr, subnet_cidrs, name_prefix, tags
 │                    out: vpc_id, subnet_ids, public_subnet_id
 └─ module "compute"  in: vpc_id, subnet_id(= module.network.public_subnet_id),
                          my_ip, name_prefix, tags
                      out: instance_id, public_ip
```

아래 규칙들은 수업의 학습 목표와 직접 연결되므로 바꾸면 안 됩니다.

- **`provider` 블록은 루트에만 둡니다.** `modules/` 아래에 `provider` 나 `required_providers` 를 추가하면 모듈 재사용성이 깨지고, 이 내용 자체가 사전 예습 확인 항목입니다.
- **모듈의 `variables.tf` 와 `outputs.tf` 는 입출력 계약이라 완성된 상태로 제공합니다.** 수강생이 채우는 것은 `main.tf` 뿐입니다.
- **네이밍과 태깅은 `name_prefix` 와 `tags` 조합으로 통일합니다.** 모듈 안에서는 `merge(var.tags, { Name = "${var.name_prefix}-..." })` 를 쓰고, `name_prefix` 와 `common_tags` 는 `envs/prod/locals.tf` 에서만 정의합니다.
- **서브넷은 `map(string)`(key 가 AZ 이름, 값이 CIDR)에 대한 `for_each` 로 만듭니다.** `count` 로 바꾸면 4주차 내용과 어긋나고 리소스 주소도 달라집니다.
- **EC2 는 1대만 유지합니다.** 비용 관리가 스터디 공통 규칙입니다. `module` 블록에 `for_each` 를 걸어 여러 벌 만들지 않습니다.
- **`my_ip` 에는 `sensitive = true` 를 둡니다.** 루트와 compute 모듈 양쪽에 있습니다. 실습 화면을 캡처해 공개 리포에 올리기 때문입니다.

의도적으로 남겨둔 것이 하나 있습니다. `modules/network/outputs.tf` 의 `public_subnet_id` 가 `values(aws_subnet.public)[0].id` 입니다. week4 개념워크북 14번이 쓰지 말라고 한 식인데, 여기서는 "모듈이 대신 골라주면 고르는 근거가 계약 밖으로 숨는다"를 가르치는 재료로 씁니다. 개념워크북 9번의 `[함정]` 과 실습워크북 B-6이 이것을 다루고 대안(`subnet_ids["..."]`)도 거기서 실습합니다. 코드를 고치려면 그 두 곳을 함께 고쳐야 합니다.

`practice/` 와 `solution/` 이 내용까지 다른 파일은 다섯입니다. `main.tf` 세 개 · `envs/prod/outputs.tf` · `envs/prod/backend.tf`(`CHANGE-ME` 대 실제 값). 그리고 `practice/modules/*/README.md` 두 개는 실습 안내라서 `practice/` 에만 둡니다. 한쪽의 변수 이름이나 출력 이름을 고치면 반드시 다른 쪽과 워크북 두 편을 함께 고쳐야 합니다.
