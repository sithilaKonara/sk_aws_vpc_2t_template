terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.8.0"
    }
  }
  backend "remote" {
    organization = "sk-tf-cloud"
    workspaces {
      name = "example-workspace"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
