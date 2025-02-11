terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.70.0"
    }
  }
}

provider "aws" {
 region = var.region
}

# variables
locals {
  service_name     = var.service_name
  owner            = var.owner

  # common tags used for resources
  common_tags = {
    Environemnt = var.environment
    Service     = var.service_name
  }
}