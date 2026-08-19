variable "vpc_id" { type = string }
variable "subnet_id" { type = string }
variable "my_ip" {
  # 모듈 쪽에도 표시해 둡니다. 이 모듈을 다른 데서 쓸 때 부르는 쪽이
  # sensitive 를 잊어도 CLI 출력에서 가려집니다.
  type      = string
  sensitive = true
}
variable "instance_type" {
  type    = string
  default = "t3.micro"
}
variable "name_prefix" { type = string }
variable "tags" {
  type    = map(string)
  default = {}
}
