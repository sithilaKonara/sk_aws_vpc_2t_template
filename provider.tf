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

#     terraform {
#       backend "remote" {
#         # The name of your Terraform Cloud organization.
#         organization = "example-organization"
#
#         # The name of the Terraform Cloud workspace to store Terraform state files in.
#         workspaces {
#           name = "example-workspace"
#         }
#       }
#     }
