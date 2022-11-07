module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${var.project}-eks-vpc-${var.env}"
  cidr = var.vpc_cidr

  azs             = var.vpc_azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway = true
  enable_vpn_gateway = true
  enable_dns_hostnames = true

  tags = merge({ Name = "${var.project}-eks-vpc-${var.env}" }, var.tags)
}