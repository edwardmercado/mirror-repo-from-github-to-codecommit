![alt text](https://miro.medium.com/max/610/1*UbBnAobfnF5yxHYKCC70Xg.png)

# Mirror Github Repository to CodeCommit

## Prerequisites:
- Terraform 
- AWS with appropriate credentials
- SSH Key Pair (public and private)
- GitHub Token

## Getting Started
- [Generate a GitHub Token](https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token) - provide (workflow, create and delete repository permissions)
- Clone this repository.
- [Generate an SSH Key](https://docs.gitlab.com/ee/ssh/#generate-an-ssh-key-pair) - keep the default name if possible as it points to `~/.ssh/id_rsa` and `~/.ssh/id_rsa.pub`.
- Substitute values below, create a `terraform.tfvars` file and paste the below values.

```
github_token = "PUT YOUR GITHUB PERSONAL ACCESS TOKEN HERE"
aws_access_key_id     = "PUT AWS SECRET ACCESS KEY ID HERE"
aws_secret_access_key = "PUT AWS SECRET ACCESS KEY HERE"
repository_name = "PUT YOUR REPOSITORY NAME HERE (SAME ON BOTH GITHUB & CODECOMMIT)"
```

- Run `terraform init`
- Run `terraform apply -auto-approve`

## Troubleshooting
### Workflow Failed
```
> Run pixta-dev/repository-mirroring-action@v1
> fatal: no path specified; see 'git help pull' for valid url syntax
```

__Resolution:__ 
- Open the created GitHub Repository, Go to Settings > Secrets > Update `CODECOMMIT_SSH_PRIVATE_KEY` with your private SSH key. 
- Rerun workflow.