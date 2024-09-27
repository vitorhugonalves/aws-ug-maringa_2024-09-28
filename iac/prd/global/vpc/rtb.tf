####################################
####################################
# Utilizando Internet Gateway
resource "aws_route_table" "vstk_rtb_igw_us_east_1" {
    vpc_id = aws_vpc.vpc_prd_us_east_1.id
    tags = {
      "Name" = "vstk-rtb-igw-us-east-1"
      "Projeto" = "prd:infra"
       "terraform:nivel1:vpc:route_table" = "igw"
    }
}

resource "aws_route" "vstk_route_igw_us_east_1_01" {
    route_table_id = aws_route_table.vstk_rtb_igw_us_east_1.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vstk_internet_gw_us_east_1.id
}


####################################
####################################
# Utilizando pelo NAT Gateway

resource "aws_route_table" "vstk_rtb_nat_gw_us_east_1" {
    vpc_id = aws_vpc.vpc_prd_us_east_1.id
    tags = {
      "Name" = "vstk-rtb-nat-gw-us-east-1"
      "Projeto" = "prd:infra"
       "terraform:nivel1:vpc:route_table" = "nat-gw"
    }
}

resource "aws_route" "vstk_route_nat_gw_us_east_1_01" {
    route_table_id = aws_route_table.vstk_rtb_nat_gw_us_east_1.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.vstk_nat_gw_us_east_1.id
}

####################################
####################################
# Sem roteamento público

resource "aws_route_table" "vstk_rtb_without_public_access_us_east_1" {
    vpc_id = aws_vpc.vpc_prd_us_east_1.id
    tags = {
      "Name" = "vstk-rtb-without-public-access-us-east-1"
      "Projeto" = "prd:infra"
       "terraform:nivel1:vpc:route_table" = "without_public_access"
    }
}
