variable "vpc_id" {
  description = "시큐리티 그룹을 만들 VPC. network 모듈이 넘겨줍니다"
  type        = string
}
variable "subnet_id" {
  description = "EC2 를 올릴 서브넷. 바뀌면 인스턴스가 교체됩니다"
  type        = string
}
variable "my_ip" {
  # 모듈 쪽에도 표시해 둡니다. 이 모듈을 다른 데서 쓸 때 부르는 쪽이
  # sensitive 를 잊어도 CLI 출력에서 가려집니다.
  description = "22번을 열어줄 공인 IP. /32 는 모듈이 붙입니다"
  type        = string
  sensitive   = true
}
variable "instance_type" {
  description = "EC2 인스턴스 타입. 바꾸면 요금이 달라집니다"
  type        = string
  default     = "t3.micro"
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
