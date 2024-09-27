resource "aws_security_group" "ec2_bastion_prd" {
  name = "ec2_bastion-prd"
  description = "Security Group do servico ec2_bastion-prd"
  vpc_id      = data.aws_vpc.prd.id
  tags = {    
    Name = "ec2_bastion-prd"
    "Projeto" = "prd:bastion-prd"
    "terraform:nivel1:vpc:sg" = "ec2_bastion-prd"
  }

  
  ingress {
    description  = "Permite TCP/22 - vitor.alves"
    from_port    = 22
    to_port      = 22
    protocol     = "tcp"
    cidr_blocks  = ["0.0.0.0/0"]
  }

  ingress {
    description = "Permite ICMP/Ping - Any"
    from_port   = 8
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  egress {
    description = "Permite ICMP/Ping - Any"
    from_port   = 8
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Permite UDP/53 - vpc-responder"
    from_port   = 53
    to_port     = 53
    protocol    = "udp"
    cidr_blocks = ["172.21.0.2/32"]
  }

  egress {
    description = "Permite TCP/53 - vpc-responder"
    from_port   = 53
    to_port     = 53
    protocol    = "tcp"
    cidr_blocks = ["172.21.0.2/32"]
  }

  egress {
    description = "Permite TCP/22 - vpc-prd-hosts"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["172.21.0.0/16"]
  }

  egress {
    description = "Permite TCP/80 - vpc-prd-hosts"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["172.21.0.0/16"]
  }

  egress {
    description = "Permite TCP/443 - vpc-prd-hosts"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["172.21.0.0/16"]
  }
}