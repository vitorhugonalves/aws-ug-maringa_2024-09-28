resource "aws_vpc_dhcp_options" "vstk_vpc_dhcp_opt_us_east_2" {
    domain_name = "hml.vstk.local"
    domain_name_servers = ["AmazonProvidedDNS"]
    #ntp_servers = []
    tags = {
      "Name" = "vstk-vpc-dhcp-opt-us-east-2"
      "Projeto" = "hml:infra"
      "terraform:nivel1:vpc:dhcp_options" = "vpc-hml-options"
    }
}

resource "aws_vpc_dhcp_options_association" "vstk_vpc_dhcp_opt_assoc_us_east_2" {
    vpc_id = aws_vpc.vpc_hml_us_east_2.id
    dhcp_options_id = aws_vpc_dhcp_options.vstk_vpc_dhcp_opt_us_east_2.id
}