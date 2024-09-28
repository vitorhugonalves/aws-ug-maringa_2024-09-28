###############
# IAM Role

resource "aws_iam_role" "iam_role_bastion_prd" {
  name = "bastion-prd-${random_string.rand6.result}"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

###############
# IAM Instance Profile

resource "aws_iam_instance_profile" "aws_iam_instance_bastion_prd_profile" {
  name = "bastion-prd-${random_string.rand6.result}"
  role = aws_iam_role.iam_role_bastion_prd.name
}


###############
# IAM Policy
##### Cria a politica e atacha à IAM-ROLE criada anteriormente

resource "aws_iam_role_policy" "aws_iam_role_policy_user_bastion_prd" {
    # Nome da policy dentro da Role
    name = "bastion-prd-pol-${random_string.rand6.result}"
    role = aws_iam_role.iam_role_bastion_prd.id
    policy = <<EOF
{
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "s3:ListBucket",
            "Resource": "arn:aws:s3:::terraform-states-v263y32m"
        },
        {
            "Effect": "Allow",
            "Action": [
                "s3:GetObject*"
            ],
            "Resource": "arn:aws:s3:::terraform-states-v263y32m/prd/*"
        }
    ],
    "Version": "2012-10-17"
}
EOF
}