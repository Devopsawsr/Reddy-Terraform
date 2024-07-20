output "instance_id" {
  value = aws_instance.reddy-web[*].id

}
