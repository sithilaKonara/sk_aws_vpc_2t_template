resource "random_string" "random" {
  length  = 4
  special = false
  upper   = false
}

# Creating a resource reference point to be used by Terraform components 
data "aws_caller_identity" "current" {}
data "aws_partition" "current" {}
data "aws_region" "current" {}
data "aws_availability_zones" "available" {
  state = "available"
}

locals {
  json_data = jsondecode(file("variables.json"))
}

output "json_data" {
  value = local.json_data
}



module "vpc" {

  source = "terraform-aws-modules/vpc/aws"
  count  = length(local.json_data.vpc)

  name = local.json_data.vpc[count.index-1].name
  cidr = local.json_data.vpc[count.index-1].cidr

  azs             = local.json_data.vpc[count.index-1].azs
  private_subnets = local.json_data.vpc[count.index-1].private_subnets
  public_subnets  = local.json_data.vpc[count.index-1].public_subnets

  enable_nat_gateway = local.json_data.vpc[count.index-1].enable_nat_gateway
  enable_vpn_gateway = local.json_data.vpc[count.index-1].enable_vpn_gateway

  tags = {
    Terraform   = "${local.json_data.vpc[count.index-1].tags.Terraform}"
    Environment = "${local.json_data.vpc[count.index-1].tags.Terraform}"
  }
}


