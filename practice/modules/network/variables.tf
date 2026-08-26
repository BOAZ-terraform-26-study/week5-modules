variable "vpc_cidr" {
  description = "이 모듈이 만들 VPC 의 CIDR 블록"
  type        = string
}
variable "subnet_cidrs" {
  description = "퍼블릭 서브넷. key 가 AZ 이름, 값이 CIDR 입니다"
  type        = map(string)
}
variable "name_prefix" {
  description = "Name 태그 앞에 붙일 접두어. 루트가 넘겨줍니다"
  type        = string
}
variable "tags" {
  description = "공통 태그. 모듈은 Name 만 merge 로 얹습니다"
  type        = map(string)
  default     = {}
}
