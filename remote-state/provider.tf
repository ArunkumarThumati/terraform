terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.49.0"
    }
  }


  backend "s3" {
    bucket = "daredevops-remotestate"
    key    = "Remote-state-test"
    region = "us-east-1"
    dynamodb_table = "daredevops-locking"
  }
}


# provide authentication
   provider "aws" {
      region = "us-east-1"
}