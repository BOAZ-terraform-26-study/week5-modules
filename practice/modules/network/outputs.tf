output "vpc_id" { value = aws_vpc.this.id }
output "subnet_ids" { value = { for k, s in aws_subnet.public : k => s.id } }
output "public_subnet_id" { value = values(aws_subnet.public)[0].id }
