resource "aws_internet_gateway" "vstk_internet_gw_us_east_2" {
    vpc_id = aws_vpc.vpc_hml_us_east_2.id

    tags = {
      "Name" = "vstk-internet-gw-us-east-2"
      "Projeto" = "hml:infra"
      "terraform:nivel1:vpc:gateway" = "internet-gw"
    }
}

resource "aws_nat_gateway" "vstk_nat_gw_us_east_2" {
  allocation_id = aws_eip.vstk_eip_nat_gw_us_east_2.id
  subnet_id     = aws_subnet.vstk_app_ext_a.id

  tags = {
    "Name" = "vstk-nat-gw-us-east-2"
    "Projeto" = "hml:infra"
    "terraform:nivel1:vpc:gateway" = "nat-gw"
  }

  depends_on = [ aws_internet_gateway.vstk_internet_gw_us_east_2 ]
}

