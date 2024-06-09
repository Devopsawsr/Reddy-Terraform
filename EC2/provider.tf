terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.27"
    }
  }

  backend "s3" {
    bucket = "lohithtestbucket"
    key    = "Reddy/EC2/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  default_tags {
    tags = {
      Name        = "${var.Name}-${var.project}-${var.environment}-ec2"
      Environment = var.environment
      Owner       = var.owner
      Project     = var.project
    }
  }
}
