terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "first_bucket" {
  bucket = "tejas-angadi-tf-test-bucket"

  tags = {
    Name        = "My bucket 2.0"
    Environment = "Dev"
  }
}
