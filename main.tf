terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket       = "terraform-backend-01201"   
    key          = "terraform-pr-demo/terraform.tfstate"
    region       = "ap-south-1"                      
    encrypt      = true
    use_lockfile = true                       
  }
}


provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "my-tf-test-bucket-2211321"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Team        = "DevOps"
  }
}

