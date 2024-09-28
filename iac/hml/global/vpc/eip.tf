resource "aws_eip" "vstk_eip_nat_gw_us_east_2" {
    domain = "vpc"
    tags = {
      "Name" = "vstk_eip-nat-gw-us-east-2"
      "Projeto" = "hml:infra"
    }
}
