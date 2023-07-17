# v_vpc = [
#   {
#     azs                = ["eu-west-1a", "eu-west-1b"]
#     cidr               = "10.0.0.0/16"
#     enable_nat_gateway = true
#     enable_vpn_gateway = true
#     name               = "my-vpc-01"
#     private_subnets    = ["10.0.1.0/24", "10.0.2.0/24"]
#     public_subnets     = ["10.0.101.0/24", "10.0.102.0/24"]
#     tags = {
#       "Terraform"   = "true",
#       "Environment" = "dev"
#     }
#   },
#   {
#     azs                = ["eu-west-1a", "eu-west-1b"]
#     cidr               = "10.1.0.0/16"
#     enable_nat_gateway = true
#     enable_vpn_gateway = true
#     name               = "my-vpc-02"
#     private_subnets    = ["10.1.1.0/24", "10.1.2.0/24"]
#     public_subnets     = ["10.1.101.0/24", "10.1.102.0/24"]
#     tags = {
#       "Terraform"   = "true",
#       "Environment" = "test"
#     }
#   }
# ]
