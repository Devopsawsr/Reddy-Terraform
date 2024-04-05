################################################################################
# VPC
################################################################################

resource "aws_vpc" "this" {
  cidr_block          = var.use_ipam_pool ? null : var.cidr
  instance_tenancy                     = var.instance_tenancy
  enable_dns_hostnames                 = var.enable_dns_hostnames
  enable_dns_support                   = var.enable_dns_support

  tags = merge(
    { "Name" = var.name },
    var.vpc_tags,
  )
}
