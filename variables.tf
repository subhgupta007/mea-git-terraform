variable "environment" {
  description = "Environment name (e.g., dev, staging, prod)"
  type        = string
}

variable "service_name" {
  description = "Name of the service"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
}

variable "owner" {
  description = "Owner of the resources"
  type        = string
}

variable "security_group_name" {
    type = string
}

variable "vpc_id" {
  description = "The ID of the existing VPC"
  type        = string
}



//ec2 variables

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}

variable "ebs_volume_size" {
  description = "Size of EBS volume (in GB)"
  type        = number
}

variable "ebs_volume_type" {
  description = "EBS volume type"
  type        = string
  default     = "gp3"
}

variable "ami" {
  description = "ami id"
  type        = string     
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "availability_zone" {
  description = "Availability Zone"
  type        = string
}

 variable "instance_name" {
  description = "name of the instance"
  type        = string
  
 }

 variable "key_name" {
  description = "keyname"
  type        = string
}