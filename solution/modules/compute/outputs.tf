output "instance_id" {
  description = "EC2 인스턴스 ID. 계약을 완결시켜 둡니다"
  value       = aws_instance.web.id
}
output "public_ip" {
  description = "EC2 의 퍼블릭 IPv4. 루트가 재노출합니다"
  value       = aws_instance.web.public_ip
}
