terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.55.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "TimC"
}


resource "aws_s3_bucket" "data-bucket" {
  bucket = "tim-data-set"

  tags = {
    Name        = "Data bucket"

  }
}

