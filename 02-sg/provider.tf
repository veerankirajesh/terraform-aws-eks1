terraform {
  required_version = ">=1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>6.5.0"
    }
  }

  backend "s3" {
    bucket         = "rajesh76-state-dev"
    key            = "minikube"
    region         = "us-east-1"
    dynamodb_table = "rajesh76-locking-dev"
  }
}

provider "aws" {
  region = "us-east-1"
}
