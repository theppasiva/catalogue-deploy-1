terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = "5.94.1"
      version = "~> 5.0"
    }
  }


backend "s3" {
    bucket = "sivaram-practice-terraform-dev"
    key    = "catalogue-deploy"
    region = "us-east-1"
    dynamodb_table = "sivaram-practice-terraform-locking-dev"
  }

}

provider "aws" {
  region = "us-east-1"
}