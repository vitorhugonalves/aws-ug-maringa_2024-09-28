# Instancia bastion-prd

resource "aws_eip" "eip_bastion_prd" {
  domain   = "vpc"
  network_interface = aws_network_interface.nic_bastion_prd.id
  tags = {
    Name = "eip_${var.bastion_prd}"
    Projeto = "${var.env_name}:${var.bastion_prd}"
    Environment = "PRD"
  }
}

resource "aws_network_interface" "nic_bastion_prd" {
  subnet_id = "subnet-025e9837f3aad503b"
  security_groups = [data.aws_security_group.sg_bastion_prd.id]
  source_dest_check = true

  tags = {
    Name = "nic_${var.bastion_prd}"
    Projeto = "${var.env_name}:${var.bastion_prd}"
    Environment = "PRD"
  }
}


resource "aws_instance" "ec2_bastion_prd" {
    ami           = data.aws_ami.ami_bastion_prd.id
    instance_type = "t3.small"
    ebs_optimized = true
    iam_instance_profile = aws_iam_instance_profile.aws_iam_instance_bastion_prd_profile.name
    key_name = "infra-2024_09"

    root_block_device {
        volume_type = "gp3"
        volume_size = "12"
        tags = {
          Name = "disco_so_${var.bastion_prd}"
          Projeto = "${var.env_name}:${var.bastion_prd}"
          Environment = "PRD"
          amazon-inspector-remediation-enabled = true
        }
    }
    
    network_interface {
        network_interface_id = aws_network_interface.nic_bastion_prd.id
        device_index         = 0
    }
    tags = {
        Name = var.bastion_prd
        Projeto = "${var.env_name}:${var.bastion_prd}"
        Environment = "PRD"
    }    

    lifecycle {
      create_before_destroy = false
    }

    user_data = <<EOF
#!/bin/bash
sudo hostnamectl set-hostname bastion-prd
EOF

}