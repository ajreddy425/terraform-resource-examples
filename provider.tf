# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

// FAQ  5/5 What is backend in terraform

terraform {
  backend "s3" {
    bucket         = "terraform-bucket-2406"
    key            = "path/s3statefile/terraform.tfstate/"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
  }
}
