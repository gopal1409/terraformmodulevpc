module "ec2-public" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "2.17.0"
  # insert the 34 required variables here
  name = "${var.environment}-BastionHost"
  #instance_count = 5
  ami = 
  instance_type = var.instance_type
  #key_name = var.instance_key
  #monitoring = true
  subnet_id = module.vpc.public_subnets[0]
  vpc_security_group_ids = [module.public_bastion_sg.this_security_group]
  tags = local.common_tags

}