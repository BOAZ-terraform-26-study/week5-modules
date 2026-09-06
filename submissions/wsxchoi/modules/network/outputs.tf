output "vpc_id" {
  description = "만들어진 VPC 의 ID. compute 모듈로 넘깁니다"
  value       = aws_vpc.this.id
}
output "subnet_ids" {
  description = "AZ 이름을 key 로 하는 서브넷 ID 맵"
  value       = { for k, s in aws_subnet.public : k => s.id }
}
output "public_subnet_id" {
  description = "모듈이 대신 골라 내주는 서브넷. 개념워크북 9번"
  value       = values(aws_subnet.public)[0].id
}
