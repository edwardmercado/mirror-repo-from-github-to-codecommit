resource "aws_iam_user" "mirror_user" {
  name = "GitToCodeCommitSyncUser-TEST"
}

resource "aws_iam_user_ssh_key" "ssh_key" {
  username   = aws_iam_user.mirror_user.name
  encoding   = "SSH"
  public_key = file("~/.ssh/id_rsa.pub")
}


# IAM GROUP
resource "aws_iam_group" "mirror_group" {
  name = "GitToCodeCommitSyncGroup-TEST"
}

# AWS MANAGED IAM POLICY
data "aws_iam_policy" "aws_poweruser_codecommit" {
  arn = "arn:aws:iam::aws:policy/AWSCodeCommitPowerUser"
}

# Policy attachment
resource "aws_iam_group_policy_attachment" "policy_attachment" {
  group      = aws_iam_group.mirror_group.name
  policy_arn = data.aws_iam_policy.aws_poweruser_codecommit.arn
}

# User membership to IAM Group
resource "aws_iam_group_membership" "user_membership" {
  name = "codecommit_poweruser_membership"
  users = [
    aws_iam_user.mirror_user.name
  ]

  group = aws_iam_group.mirror_group.name
}

