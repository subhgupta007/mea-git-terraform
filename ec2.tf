module "iwt__git_ec2" {
  source               = "terraform-aws-modules/ec2-instance/aws"
  ami                  = var.ami
  instance_type        = var.instance_type
  subnet_id            = var.subnet_id
  availability_zone    = var.availability_zone
  vpc_security_group_ids = [module.iwt_sg.security_group_id]
  key_name             = var.key_name

  root_block_device = [
    {
      volume_size = var.ebs_volume_size
    }
  ]

  tags = {
    Name = var.instance_name
  }
}

resource "aws_eip" "example" {
  #domain = "vpc"

  tags = {
    Name        = "${var.instance_name}-eip"
    Environment = var.environment
    Service     = var.service_name
    Owner       = var.owner
  }
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = module.mea_git_ec2.id# Reference the first instance created by the module
  allocation_id = aws_eip.example.id
}