provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      "Environment" = var.environment
      "Terraform"     = "true" # Add a key-value pair here
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
     helm = {
      source = "hashicorp/helm"
      version = "3.0.2"  # Use the latest version available
    }
  }
}