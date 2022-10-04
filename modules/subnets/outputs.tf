output "vpc_public_subnets" {
  description = "IDs of the VPC's public subnet"
  value       = aws_subnet.public
}

output "vpc_private_subnets" {
  description = "IDs of the VPC's private subnet"
  value       = aws_subnet.private
}
