provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      "Environment" = var.environment
      "Managed"     = "true" # Add a key-value pair here
    }
  }
}
terraform {
  backend "s3" {}
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.11.0"
    }
  }
}