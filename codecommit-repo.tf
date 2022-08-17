resource "aws_codecommit_repository" "test" {
  repository_name = var.codecommit_repository_name
  description     = "my test repo created by Terraform"
}
