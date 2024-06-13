#.............To select aws region.........
aws_region = "us-east-1"


#..........input values for VPC............
vpc_cidr                                         = "10.0.0.0/16"
instance_tenancy                                 = "default"
dns_support_for_resources_internal_communiaction = true
dns_hostname                                     = true
tags_vpc = { "Name" : "DEV-NEW-VPC",
  "project" : "reddy",
  "owner"   : "Devops"
}
