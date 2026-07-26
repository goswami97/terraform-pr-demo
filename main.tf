terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "my-tf-test-bucket-00112101"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

