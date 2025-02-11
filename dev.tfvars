#Common environment variables
environment  = "dev"
service_name = "mca-terraform-backend-infra"
region       = "ap-south-1"
owner        = "DELOITTE-DEVOPS"


ami                    = "ami-09773b29dffbef1f2" 
instance_type          = "a1.large"
subnet_id              = "subnet-0ebfe2599c4337450" 
ebs_volume_size        = 60
availability_zone      = "ap-south-1b"
instance_name          = "MEA-GIT-SERVER"
key_name               = "mea_git_key"




security_group_name = "mea_git_sg"
vpc_id              = "vpc-09c9c1ae3e423b8ec"
