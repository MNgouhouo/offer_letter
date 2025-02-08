provider "aws" {
  region = "var.aws_region"
}
## Terraform block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
module "ec2" {
  source ="../../../modules/ec2"
  aws_region    = "us-east-1"
key_name      = "s7-key"
subnet_id     = "subnet-055734703184bdf56"
instance_type = "t2.micro"
tags = {
    name           = "offer-letter"
    owner          = "mamadou"
    environment    = "dev"
    project        = "koupa"
    create_by      = "Terraform"
    cloud_provider = "aws"
    company        = "EKT"
}
}