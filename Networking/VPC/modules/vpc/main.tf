# Resource: VPC
# Description: Creates the main VPC with the specified CIDR block.
# The VPC serves as the networking foundation for the entire infrastructure.

resource "aws_vpc" "create_vpc" {
  cidr_block           = var.vpc_cidr
  instance_tenancy     = var.instance_tenancy
  enable_dns_support   = var.dns_support_for_resources_internal_communiaction
  enable_dns_hostnames = var.dns_hostname
  tags                 = var.tags_vpc
}
