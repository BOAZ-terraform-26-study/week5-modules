variable "vpc_id" { type = string }
variable "subnet_id" { type = string }
variable "my_ip" { type = string }
variable "instance_type" {
  type    = string
  default = "t3.micro"
}
variable "name_prefix" { type = string }
variable "tags" {
  type    = map(string)
  default = {}
}
