################################
################################
# Subnet - Internas

resource "aws_subnet" "vstk_app_int_a" {
    vpc_id                  = aws_vpc.vpc_hml_us_east_2.id
    cidr_block              = "172.20.11.0/24"
    availability_zone       = "us-east-2a"
    map_public_ip_on_launch = false

    tags = {
        "Name" = "app-int-a"
        "Projeto": "hml:infra"
        "terraform:nivel1:vpc:subnet" = "app_int"
    }

}

resource "aws_subnet" "vstk_app_int_b" {
    vpc_id                  = aws_vpc.vpc_hml_us_east_2.id
    cidr_block              = "172.20.12.0/24"
    availability_zone       = "us-east-2b"
    map_public_ip_on_launch = false

    tags = {
        "Name" = "app-int-b"
        "Projeto": "hml:infra"
        "terraform:nivel1:vpc:subnet" = "app_int"
    }

}

resource "aws_subnet" "vstk_app_int_c" {
    vpc_id                  = aws_vpc.vpc_hml_us_east_2.id
    cidr_block              = "172.20.13.0/24"
    availability_zone       = "us-east-2c"
    map_public_ip_on_launch = false

    tags = {
        "Name" = "app-int-c"
        "Projeto": "hml:infra"
        "terraform:nivel1:vpc:subnet" = "app_int"
    }

}

################################
################################
# Subnet - Externas

resource "aws_subnet" "vstk_app_ext_a" {
    vpc_id                  = aws_vpc.vpc_hml_us_east_2.id
    cidr_block              = "172.20.21.0/24"
    availability_zone       = "us-east-2a"
    map_public_ip_on_launch = true

    tags = {
        "Name" = "app-ext-a"
        "Projeto": "hml:infra"
        "terraform:nivel1:vpc:subnet" = "app_ext"
    }

}

resource "aws_subnet" "vstk_app_ext_b" {
    vpc_id                  = aws_vpc.vpc_hml_us_east_2.id
    cidr_block              = "172.20.22.0/24"
    availability_zone       = "us-east-2b"
    map_public_ip_on_launch = true

    tags = {
        "Name" = "app-ext-b"
        "Projeto": "hml:infra"
        "terraform:nivel1:vpc:subnet" = "app_ext"
    }

}

resource "aws_subnet" "vstk_app_ext_c" {
    vpc_id                  = aws_vpc.vpc_hml_us_east_2.id
    cidr_block              = "172.20.23.0/24"
    availability_zone       = "us-east-2c"
    map_public_ip_on_launch = true

    tags = {
        "Name" = "app-ext-c"
        "Projeto": "hml:infra"
        "terraform:nivel1:vpc:subnet" = "app_ext"
    }

}

################################
################################
# Subnet - Databases - Nivel1

resource "aws_subnet" "vstk_db_int_n1_a" {
    vpc_id                  = aws_vpc.vpc_hml_us_east_2.id
    cidr_block              = "172.20.101.0/24"
    availability_zone       = "us-east-2a"
    map_public_ip_on_launch = true

    tags = {
        "Name" = "db-int-n1-a"
        "Projeto": "hml:infra"
        "terraform:nivel1:vpc:subnet" = "db_int"
    }

}

resource "aws_subnet" "vstk_db_int_n1_b" {
    vpc_id                  = aws_vpc.vpc_hml_us_east_2.id
    cidr_block              = "172.20.102.0/24"
    availability_zone       = "us-east-2b"
    map_public_ip_on_launch = true

    tags = {
        "Name" = "db-int-n1-b"
        "Projeto": "hml:infra"
        "terraform:nivel1:vpc:subnet" = "db_int"
    }

}

resource "aws_subnet" "vstk_db_int_n1_c" {
    vpc_id                  = aws_vpc.vpc_hml_us_east_2.id
    cidr_block              = "172.20.103.0/24"
    availability_zone       = "us-east-2c"
    map_public_ip_on_launch = true

    tags = {
        "Name" = "db-int-n1-c"
        "Projeto": "hml:infra"
        "terraform:nivel1:vpc:subnet" = "db_int"
    }

}