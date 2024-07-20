terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.27"
    }
  }

  backend "s3" {
    bucket = "itc-terraform-state-04"
    key    = "Reddy/EC2/terraform.tfstate"
    region = "us-east-1"
  }
}
provider "aws" {
  region = var.region
  default_tags {
    tags = var.tags
  }
}
