variable "v_vpc" {
  type = list(object({
    name               = string,
    cidr               = string,
    azs                = list(string),
    private_subnets    = list(string),
    public_subnets     = list(string),
    enable_nat_gateway = bool,
    enable_vpn_gateway = bool,
    tags               = map(string)
    })
  )
  default = jsondecode(file("variables.json"))
}
