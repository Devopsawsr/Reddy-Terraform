# Module: VPC Creation
# Description: This module provisions a Virtual Private Cloud (VPC) in AWS using Terraform.
module "vpc" {
  source                                           = "./modules/vpc"
  vpc_cidr                                         = var.vpc_cidr
  instance_tenancy                                 = var.instance_tenancy
  dns_support_for_resources_internal_communiaction = var.dns_support_for_resources_internal_communiaction
  dns_hostname                                     = var.dns_hostname
  tags_vpc                                         = var.tags_vpc
  mandatory_tags = {
    "environment" = var.environment
  }
}
