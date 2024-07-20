locals {
  instance_name = "mnptech-${terraform.workspace}-app"
}
resource "aws_instance" "reddy-web" {
  ami                    = "ami-0b72821e2f351e396"
  count                  = 2
  instance_type          = var.instance_type
  key_name               = "Devops_NYL"
  vpc_security_group_ids = ["sg-0173c5a0ee33fe28a"]
  subnet_id              = "subnet-095ace14eef30fdb1"
  user_data              = file("scripts/httpd.sh")
  tags = {
    Name = local.instance_name
  }
}
