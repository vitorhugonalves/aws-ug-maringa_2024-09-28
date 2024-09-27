provider "aws" {
  region  = "us-east-1"
}

terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "terraform-states-v263y32m"
    key            = "prd/global/transit_gateway.tfstate"
    region         = "sa-east-1"
    dynamodb_table = "terraform-states-v263y32m"
  }
}