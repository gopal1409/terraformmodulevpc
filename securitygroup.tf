#aws security group terraform module
module "public_bastion_sg" {
   
  source  = "terraform-aws-modules/security-group/aws"
  version = "3.18.0"
  # insert the 3 required variables here
  name = "public-bastion-sg"
  description = "this security group for ec2"
  vpc_id = module.vpc.vpc_id
  #ingress rules
  ingress_rules = ["ssh-tcp","http-80-tcp"]
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
  egress_rules = ["all-all"]
  tags = local.common_tags
}