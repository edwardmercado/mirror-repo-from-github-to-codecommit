resource "aws_codecommit_repository" "test" {
  repository_name = var.repository_name
  description     = "my test repo created by Terraform"
}