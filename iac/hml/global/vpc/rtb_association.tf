######################################
######################################
# Subnet association

# Subnets internas
resource "aws_route_table_association" "vstk_subnet_assoc_int_a" {
  subnet_id      = aws_subnet.vstk_app_int_a.id
  route_table_id = aws_route_table.vstk_rtb_nat_gw_us_east_2.id
}

resource "aws_route_table_association" "vstk_subnet_assoc_int_b" {
  subnet_id      = aws_subnet.vstk_app_int_b.id
  route_table_id = aws_route_table.vstk_rtb_nat_gw_us_east_2.id
}

resource "aws_route_table_association" "vstk_subnet_assoc_int_c" {
  subnet_id      = aws_subnet.vstk_app_int_c.id
  route_table_id = aws_route_table.vstk_rtb_nat_gw_us_east_2.id
}

# Subnets externas

resource "aws_route_table_association" "vstk_subnet_assoc_ext_a" {
  subnet_id      = aws_subnet.vstk_app_ext_a.id
  route_table_id = aws_route_table.vstk_rtb_igw_us_east_2.id
}

resource "aws_route_table_association" "vstk_subnet_assoc_ext_b" {
  subnet_id      = aws_subnet.vstk_app_ext_b.id
  route_table_id = aws_route_table.vstk_rtb_igw_us_east_2.id
}

resource "aws_route_table_association" "vstk_subnet_assoc_ext_c" {
  subnet_id      = aws_subnet.vstk_app_ext_c.id
  route_table_id = aws_route_table.vstk_rtb_igw_us_east_2.id
}

# Subnets Databases
resource "aws_route_table_association" "vstk_subnet_assoc_db_int_n1_a" {
  subnet_id      = aws_subnet.vstk_db_int_n1_a.id
  route_table_id = aws_route_table.vstk_rtb_without_public_access_us_east_2.id
}

resource "aws_route_table_association" "vstk_subnet_assoc_db_int_n1_b" {
  subnet_id      = aws_subnet.vstk_db_int_n1_b.id
  route_table_id = aws_route_table.vstk_rtb_without_public_access_us_east_2.id
}

resource "aws_route_table_association" "vstk_subnet_assoc_db_int_n1_c" {
  subnet_id      = aws_subnet.vstk_db_int_n1_c.id
  route_table_id = aws_route_table.vstk_rtb_without_public_access_us_east_2.id
}
