terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "project11_bucket" {
  bucket = "project11-infra-branching-demo-2026"

  tags = {
    Name        = "Project11Bucket"
    Environment = "Development"
  }
}
