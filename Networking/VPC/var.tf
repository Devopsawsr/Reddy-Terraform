variable "aws_region" {
  description = "Region under which the network is to be created"
  type        = string
}

# ===============variables for VPC============
variable "vpc_cidr" {
  description = "Enter the cidr range for the VPC"
  type        = string
}

#Variable: instance tenancy
#Default: The instances launched in the VPC will use the default tenancy, which means they will run on shared hardware.
#Dedicated: The instances launched in the VPC will have dedicated tenancy, which means they will run on dedicated hardware.
variable "instance_tenancy" {
  description = "tenancy of the VPC, Dedicated or Default"
  type        = string
}

#Veriable: DNS support
# Enable DNS support for the VPC to enable DNS resolution for instances within the VPC.
# Disable DNS support for the VPC, preventing DNS resolution for instances within the VPC.
variable "dns_support_for_resources_internal_communiaction" {
  description = "whether dns support should be enabled : true/false"
  type        = bool
}

#It is a human-readable name that uniquely identifies a resource within the Domain Name System (DNS).
variable "dns_hostname" {
  description = "whether dns hostname should be enabled : true/false"
  type        = bool
}


variable "tags_vpc" {
  description = "Tags for VPC"
  type        = map(string)
}
