resource "aws_instance" "reddy-web" {
  ami                    = "ami-06bfd5e15ab84f907"
  instance_type          = var.instance_type
  key_name               = "karthik_devops"
  vpc_security_group_ids = ["sg-07ee40def7ec26298"]
  subnet_id              = "subnet-08a10c7adf1f39ed0"
}
