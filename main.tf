# locals {
#   json_data = jsondecode(file("variables.json"))
# }

# output "json_data" {
#   value = length(local.json_data.vpc)
# }

# module "vpc" {
#   count  = length(local.json_data.vpc)
#   source = "terraform-aws-modules/vpc/aws"


#   name = local.json_data.vpc[count.index].name
#   cidr = local.json_data.vpc[count.index].cidr

#   azs             = local.json_data.vpc[count.index].azs
#   private_subnets = local.json_data.vpc[count.index].private_subnets
#   public_subnets  = local.json_data.vpc[count.index].public_subnets

#   enable_nat_gateway = local.json_data.vpc[count.index].enable_nat_gateway
#   enable_vpn_gateway = local.json_data.vpc[count.index].enable_vpn_gateway

#   tags = {
#     Terraform   = "${local.json_data.vpc[count.index].tags.Terraform}"
#     Environment = "${local.json_data.vpc[count.index].tags.Terraform}"
#   }
# }


module "vpc" {
  count  = length(var.v_vpc)
  source = "terraform-aws-modules/vpc/aws"


  name = var.v_vpc[count.index].name
  cidr = var.v_vpc[count.index].cidr

  azs             = var.v_vpc[count.index].azs
  private_subnets = var.v_vpc[count.index].private_subnets
  public_subnets  = var.v_vpc[count.index].public_subnets

  enable_nat_gateway = var.v_vpc[count.index].enable_nat_gateway
  enable_vpn_gateway = var.v_vpc[count.index].enable_vpn_gateway

  tags = {
    Terraform   = "${var.v_vpc[count.index].tags["Terraform"]}"
    Environment = "${var.v_vpc[count.index].tags["Environment"]}"
  }
}

