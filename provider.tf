terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.16.0"
    }
  }

  backend "s3" {
    bucket = "rajesh-reddy-remote-state"
    key    = "expense-vpc"
    region = "us-east-1"
    dynamodb_table = "rajesh-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
