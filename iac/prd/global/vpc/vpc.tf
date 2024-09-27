resource "aws_vpc" "vpc_prd_us_east_1" {
  provider = aws
  cidr_block = "172.21.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

  tags = {
    "Name" = "vstk-vpc-us-east-1"
    "terraform:nivel1:vpc" = "prd"
    "Projeto" = "prd:infra"
  }
}