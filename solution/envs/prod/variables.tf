variable "region" {
  type    = string
  default = "ap-northeast-2"
}
variable "project_name" { type = string }
variable "my_ip" { type = string }
variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}
variable "subnet_cidrs" {
  type = map(string)
  default = {
    "ap-northeast-2a" = "10.0.1.0/24"
    "ap-northeast-2c" = "10.0.2.0/24"
  }
}
