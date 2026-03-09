terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-west-1"
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "hovsep-terraform-demo-2026-001"

  tags = {
    Name        = "Terraform Demo Bucket"
    Environment = "Dev"
    Project     = "terraform-s3-project"
  }
}