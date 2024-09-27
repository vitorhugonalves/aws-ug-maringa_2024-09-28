resource "aws_security_group" "ec2_bastion_hml" {
  name = "ec2_bastion-hml"
  description = "Security Group do servico ec2_bastion-hml"
  vpc_id      = data.aws_vpc.hml.id
  tags = {    
    Name = "ec2_bastion-hml"
    "Projeto" = "hml:bastion-hml"
    "terraform:nivel1:vpc:sg" = "ec2_bastion-hml"
  }

  
  ingress {
    description  = "Permite TCP/22 - vitor.alves"
    from_port    = 22
    to_port      = 22
    protocol     = "tcp"
    cidr_blocks  = ["168.205.21.114/32"]
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
    cidr_blocks = ["172.20.0.2/32"]
  }

  egress {
    description = "Permite TCP/53 - vpc-responder"
    from_port   = 53
    to_port     = 53
    protocol    = "tcp"
    cidr_blocks = ["172.20.0.2/32"]
  }

  egress {
    description = "Permite TCP/22 - vpc-hml-hosts"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["172.20.0.0/16"]
  }

  egress {
    description = "Permite TCP/80 - vpc-hml-hosts"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["172.20.0.0/16"]
  }

  egress {
    description = "Permite TCP/443 - vpc-hml-hosts"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["172.20.0.0/16"]
  }
}