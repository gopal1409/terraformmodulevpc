module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.78.0"
  # insert the 21 required variables here
  name = "${local.name}-${var.vpc_name}"
  #stage-hr-myvpc
  cidr = var.vpc_cidr_block
  azs = var.vpc_availability_zones
  public_subnets = var.vpc_public_subnets
  private_subnets = var.vpc_private_subnets

  #database subnet
  database_subnets = var.vpc_database_subnets
  create_database_subnet_group = var.vpc_create_database_subnet_group
  create_database_subnet_route_table = var.vpc_create_database_subnet_route_table

  #nat gateway
  #enable_nat_gateway = var.vpc_enable_nat_gateway
  #single_nat_gateway = var.vpc_single_nat_gateway
  
  #vpc dns paramter
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = local.common_tags
  vpc_tags = local.common_tags
}