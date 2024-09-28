resource "aws_eip" "vstk_eip_nat_gw_us_east_1" {
    domain = "vpc"
    tags = {
      "Name" = "vstk_eip-nat-gw-us-east-1"
      "Projeto" = "prd:infra"
    }
}
