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
      name = "sk_aws_vpc_2t_template"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "eu-west-1"
}
