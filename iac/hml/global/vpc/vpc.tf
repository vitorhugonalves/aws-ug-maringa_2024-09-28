resource "aws_vpc" "vpc_hml_us_east_2" {
  provider = aws
  cidr_block = "172.20.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

  tags = {
    "Name" = "vstk-vpc-us-east-2"
    "terraform:nivel1:vpc" = "hml"
    "Projeto" = "hml:infra"
  }
}