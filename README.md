# Test Repository for Mirroring Github to CodeCommit

### Prerequisites:
- Terraform 
- AWS with appropriate credentials
- SSH Key Pair (public and private)

### Getting Started
- Clone this repository.
- [Generate an SSH Key](https://docs.gitlab.com/ee/ssh/#generate-an-ssh-key-pair) - keep the default name if possible.
- Copy and Paste the generated SSH Keys here.
- Substitute values from `terraform.tfvars` file.
- Run `terraform init`
- Run `terraform apply -auto-approve`