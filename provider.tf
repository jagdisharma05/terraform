terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region  = "ap-south-1"  # Replace with your desired AWS region
  profile = "default"      # Replace with your AWS CLI profile if necessary
}
