# Week5 과제③ (다음 리뷰: Week6)

## 목표
- 본인 코드를 network/compute 모듈로 리팩터링하고 envs/prod에서 조합한다.

## 필수 (Must)
1. 기존(week4) 코드를 `modules/network`, `modules/compute`로 추출
2. `envs/prod`에서 두 모듈을 조합해 apply 성공
3. 모듈 output을 root output으로 재노출
4. **`destroy` 완료 확인**
5. Week6 예습: drift 개념, `terraform plan`의 `~`/`+`/`-` 읽기, `terraform import` 문법, `import` block

## 제출물 (repo: `assignments`, 폴더: `round3-week5/{github-id}/`)
- [ ] modules/ + envs/prod 코드 (tfvars/tfstate 제외)
- [ ] 워크북 (`workbook-week5.md`)
- [ ] apply output + destroy 확인

## 심화 (Optional ⭐)
- `envs/dev` 추가로 모듈 재사용, `moved` 블록으로 무중단 이전

## 리뷰 방식
- Week6 과제 리뷰 5분에 대표 PR 공유
