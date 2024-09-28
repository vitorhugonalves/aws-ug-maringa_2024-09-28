provider "aws" {
  region  = "us-east-1"
}

terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "terraform-states-v263y32m"
    key            = "prd/services/bastion-prd.tfstate"
    region         = "sa-east-1"
    dynamodb_table = "terraform-states-v263y32m"
  }
}
# Variables

variable "env_name" {
  default = "prd"
}

variable "bastion_prd" {
  default = "bastion-prd"  
}

# Resource

resource "random_string" "rand6" {
  length = 6
  special = false
}

# Datas 
data "aws_security_group" "sg_bastion_prd" {
   tags = {
      "terraform:nivel1:vpc:sg" = "ec2_bastion-prd"
  }
}

data "aws_ami" "ami_bastion_prd" {
  owners           = ["amazon"]
  filter {
    name = "name"
    values = ["al2023-ami-2023.5.20240916.0-kernel-6.1-x86_64"]
  }
}