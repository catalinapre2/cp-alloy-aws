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


  resource "aws_s3_bucket" "example" {
    bucket = "alloy-test-bucket"

    tags = {
      Name        = "My bucket"
      Environment = "Dev"
    }
  }

  resource "aws_ec2_instance" "alloy_test_ec2" {
    name = "alloy_test_ec2"
    instance_type = "t2.nano"

    tags = {
      Terraform   = "true"
      Environment = "dev"
    } 
  }


