provider "aws" {
  region  = "us-east-2"
}

terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "terraform-states-v263y32m"
    key            = "hml/services/bastion-hml.tfstate"
    region         = "sa-east-1"
    dynamodb_table = "terraform-states-v263y32m"
  }
}

# Variables

variable "env_name" {
  default = "hml"
}

variable "bastion_hml" {
  default = "bastion-hml"  
}

# Resource

resource "random_string" "rand6" {
  length = 6
  special = false
}

# Datas 
data "aws_security_group" "sg_bastion_hml" {
   tags = {
      "terraform:nivel1:vpc:sg" = "ec2_bastion-hml"
  }
}

data "aws_ami" "ami_bastion_hml" {
  owners           = ["amazon"]
  filter {
    name = "name"
    values = ["al2023-ami-2023.5.20240916.0-kernel-6.1-x86_64"]
  }
}