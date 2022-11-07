terraform {
  source = "${path_relative_from_include()}/../terraform/modules/eks//."
}

include {
  path = find_in_parent_folders()
}

inputs = {
  vpc_cidr = "10.0.0.0/16"
  vpc_azs = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]
}