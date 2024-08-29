provider "aws" {
  region = "ap-southeast-1"  # Update this to your desired region
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0"
    }
  }

  required_version = ">= 0.13"
}