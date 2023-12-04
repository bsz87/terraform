provider "aws" {
  region  = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "bartlomiej-szelagowski-panda-devops-core-15"
    key = "infra/terraform.state"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.33"
    }
  }
  required_version = ">= 1.0.0"
}