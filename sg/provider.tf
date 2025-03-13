terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.90.1"
    }
    
  }
  backend "s3" {
    bucket = "daws-kedaarnath-aws-terraform"
    key    = "sg"
    region = "us-east-1"
    dynamodb_table = "aws-terraform-jenkins"
  }
}

provider "aws" {
  # Configuration options
}