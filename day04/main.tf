terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket       = "tejas-angadi-tf-state"
    key          = "dev/terraform.tfstate"
    region       = "ap-south-1"
    encrypt      = true
    use_lockfile = true
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
