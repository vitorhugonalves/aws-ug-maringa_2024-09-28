################################
################################
# Subnet - Internas

resource "aws_subnet" "vstk_app_int_a" {
    vpc_id                  = aws_vpc.vpc_prd_us_east_1.id
    cidr_block              = "172.21.11.0/24"
    availability_zone       = "us-east-1a"
    map_public_ip_on_launch = false

    tags = {
        "Name" = "app-int-a"
        "Projeto": "prd:infra"
        "terraform:nivel1:vpc:subnet" = "app_int"
    }

}

resource "aws_subnet" "vstk_app_int_b" {
    vpc_id                  = aws_vpc.vpc_prd_us_east_1.id
    cidr_block              = "172.21.12.0/24"
    availability_zone       = "us-east-1b"
    map_public_ip_on_launch = false

    tags = {
        "Name" = "app-int-b"
        "Projeto": "prd:infra"
        "terraform:nivel1:vpc:subnet" = "app_int"
    }

}

resource "aws_subnet" "vstk_app_int_c" {
    vpc_id                  = aws_vpc.vpc_prd_us_east_1.id
    cidr_block              = "172.21.13.0/24"
    availability_zone       = "us-east-1c"
    map_public_ip_on_launch = false

    tags = {
        "Name" = "app-int-c"
        "Projeto": "prd:infra"
        "terraform:nivel1:vpc:subnet" = "app_int"
    }

}

################################
################################
# Subnet - Externas

resource "aws_subnet" "vstk_app_ext_a" {
    vpc_id                  = aws_vpc.vpc_prd_us_east_1.id
    cidr_block              = "172.21.21.0/24"
    availability_zone       = "us-east-1a"
    map_public_ip_on_launch = true

    tags = {
        "Name" = "app-ext-a"
        "Projeto": "prd:infra"
        "terraform:nivel1:vpc:subnet" = "app_ext"
    }

}

resource "aws_subnet" "vstk_app_ext_b" {
    vpc_id                  = aws_vpc.vpc_prd_us_east_1.id
    cidr_block              = "172.21.22.0/24"
    availability_zone       = "us-east-1b"
    map_public_ip_on_launch = true

    tags = {
        "Name" = "app-ext-b"
        "Projeto": "prd:infra"
        "terraform:nivel1:vpc:subnet" = "app_ext"
    }

}

resource "aws_subnet" "vstk_app_ext_c" {
    vpc_id                  = aws_vpc.vpc_prd_us_east_1.id
    cidr_block              = "172.21.23.0/24"
    availability_zone       = "us-east-1c"
    map_public_ip_on_launch = true

    tags = {
        "Name" = "app-ext-c"
        "Projeto": "prd:infra"
        "terraform:nivel1:vpc:subnet" = "app_ext"
    }

}

################################
################################
# Subnet - Databases - Nivel1

resource "aws_subnet" "vstk_db_int_n1_a" {
    vpc_id                  = aws_vpc.vpc_prd_us_east_1.id
    cidr_block              = "172.21.101.0/24"
    availability_zone       = "us-east-1a"
    map_public_ip_on_launch = true

    tags = {
        "Name" = "db-int-n1-a"
        "Projeto": "prd:infra"
        "terraform:nivel1:vpc:subnet" = "db_int"
    }

}

resource "aws_subnet" "vstk_db_int_n1_b" {
    vpc_id                  = aws_vpc.vpc_prd_us_east_1.id
    cidr_block              = "172.21.102.0/24"
    availability_zone       = "us-east-1b"
    map_public_ip_on_launch = true

    tags = {
        "Name" = "db-int-n1-b"
        "Projeto": "prd:infra"
        "terraform:nivel1:vpc:subnet" = "db_int"
    }

}

resource "aws_subnet" "vstk_db_int_n1_c" {
    vpc_id                  = aws_vpc.vpc_prd_us_east_1.id
    cidr_block              = "172.21.103.0/24"
    availability_zone       = "us-east-1c"
    map_public_ip_on_launch = true

    tags = {
        "Name" = "db-int-n1-c"
        "Projeto": "prd:infra"
        "terraform:nivel1:vpc:subnet" = "db_int"
    }

}