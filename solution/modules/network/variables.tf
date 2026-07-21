variable "vpc_cidr" { type = string }
variable "subnet_cidrs" { type = map(string) }
variable "name_prefix" { type = string }
variable "tags" {
  type    = map(string)
  default = {}
}
