output "vpc_id" {
  value = aws_vpc.create_vpc.id
}

output "vpc_cidr" {
  value = aws_vpc.create_vpc.cidr_block
}
