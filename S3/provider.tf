terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.27"
    }
  }
}
terraform {
  backend "s3" {
    bucket = "lohithtestbucket"
    key    = "ITC/S3/terraform.tfstate*"
    region = "us-east-1"
  }
}
