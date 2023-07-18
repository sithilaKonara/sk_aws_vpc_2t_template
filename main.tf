# module "vpcs" {
#   count  = length(var.v_vpc)
#   source = "terraform-aws-modules/vpc/aws"


#   name = var.v_vpc[count.index].name
#   cidr = var.v_vpc[count.index].cidr

#   azs             = var.v_vpc[count.index].azs
#   private_subnets = var.v_vpc[count.index].private_subnets
#   public_subnets  = var.v_vpc[count.index].public_subnets

#   enable_nat_gateway = var.v_vpc[count.index].enable_nat_gateway
#   enable_vpn_gateway = var.v_vpc[count.index].enable_vpn_gateway

#   tags = {
#     Terraform   = "${var.v_vpc[count.index].tags["Terraform"]}"
#     Environment = "${var.v_vpc[count.index].tags["Environment"]}"
#   }
# }

# module "vpcs" {
#   for_each = { for vpc in var.v_vpc : vpc.name => vpc }
#   source   = "terraform-aws-modules/vpc/aws"


#   name = each.value.name
#   cidr = each.value.cidr

#   azs             = each.value.azs
#   private_subnets = each.value.private_subnets
#   public_subnets  = each.value.public_subnets

#   enable_nat_gateway = each.value.enable_nat_gateway
#   enable_vpn_gateway = each.value.enable_vpn_gateway

#   tags = {
#     Terraform   = "${each.value.tags["Terraform"]}"
#     Environment = "${each.value.tags["Environment"]}"
#   }
# }

module "vpcs" {
  for_each = toset(var.v_vpc)
  source   = "terraform-aws-modules/vpc/aws"


  name = each.value.name
  cidr = each.value.cidr

  azs             = each.value.azs
  private_subnets = each.value.private_subnets
  public_subnets  = each.value.public_subnets

  enable_nat_gateway = each.value.enable_nat_gateway
  enable_vpn_gateway = each.value.enable_vpn_gateway

  tags = {
    Terraform   = "${each.value.tags["Terraform"]}"
    Environment = "${each.value.tags["Environment"]}"
  }
}
