resource "aws_vpc_dhcp_options" "vstk_vpc_dhcp_opt_us_east_1" {
    domain_name = "prd.vstk.local"
    domain_name_servers = ["AmazonProvidedDNS"]
    #ntp_servers = []
    tags = {
      "Name" = "vstk-vpc-dhcp-opt-us-east-1"
      "Projeto" = "prd:infra"
      "terraform:nivel1:vpc:dhcp_options" = "vpc-prd-options"
    }
}

resource "aws_vpc_dhcp_options_association" "vstk_vpc_dhcp_opt_assoc_us_east_1" {
    vpc_id = aws_vpc.vpc_prd_us_east_1.id
    dhcp_options_id = aws_vpc_dhcp_options.vstk_vpc_dhcp_opt_us_east_1.id
}