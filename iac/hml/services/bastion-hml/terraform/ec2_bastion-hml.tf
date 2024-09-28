# Instancia bastion-hml

resource "aws_eip" "eip_bastion_hml" {
  domain   = "vpc"
  network_interface = aws_network_interface.nic_bastion_hml.id
  tags = {
    Name = "eip_${var.bastion_hml}"
    Projeto = "${var.env_name}:${var.bastion_hml}"
    Environment = "hml"
  }
}

resource "aws_network_interface" "nic_bastion_hml" {
  subnet_id = "subnet-078e27bcd038dd67b"
  security_groups = [data.aws_security_group.sg_bastion_hml.id]
  source_dest_check = true

  tags = {
    Name = "nic_${var.bastion_hml}"
    Projeto = "${var.env_name}:${var.bastion_hml}"
    Environment = "hml"
  }
}


resource "aws_instance" "ec2_bastion_hml" {
    ami           = data.aws_ami.ami_bastion_hml.id
    instance_type = "t3.small"
    ebs_optimized = true
    iam_instance_profile = aws_iam_instance_profile.aws_iam_instance_bastion_hml_profile.name
    key_name = "infra-2024_09"

    root_block_device {
        volume_type = "gp3"
        volume_size = "12"
        tags = {
          Name = "disco_so_${var.bastion_hml}"
          Projeto = "${var.env_name}:${var.bastion_hml}"
          Environment = "hml"
          amazon-inspector-remediation-enabled = true
        }
    }
    
    network_interface {
        network_interface_id = aws_network_interface.nic_bastion_hml.id
        device_index         = 0
    }
    tags = {
        Name = var.bastion_hml
        Projeto = "${var.env_name}:${var.bastion_hml}"
        Environment = "hml"
    }    

    lifecycle {
      create_before_destroy = false
    }

    user_data = <<EOF
#!/bin/bash
sudo hostnamectl set-hostname bastion-hml
EOF

}