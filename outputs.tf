output "SSH_Clone_URL" {
  value = aws_codecommit_repository.test.clone_url_ssh
}

output "SSH_Public_Key_ID" {
  value = aws_iam_user_ssh_key.ssh_key.ssh_public_key_id
}

output "SSH_Private_Key" {
  value = file("~/.ssh/id_rsa")
}