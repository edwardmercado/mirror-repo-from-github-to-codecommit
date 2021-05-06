# Test Repository for Mirroring Github to CodeCommit

## Prerequisites:
- Terraform 
- AWS with appropriate credentials
- SSH Key Pair (public and private)
- GitHub Token

## Getting Started
- Generate a GitHub Token - provide (workflow, create and delete repository permissions)
- Clone this repository.
- [Generate an SSH Key](https://docs.gitlab.com/ee/ssh/#generate-an-ssh-key-pair) - keep the default name if possible as it points to `~/.ssh/id_rsa`.
- Substitute mandatory values from `terraform.tfvars` file.
- Run `terraform init`
- Run `terraform apply -auto-approve`

## Troubleshooting
- Workflow Failed.
__Resolution:__ Open the created GitHub Repository, Go to Settings > Secrets > Update `CODECOMMIT_SSH_PRIVATE_KEY` with your private SSH key. 