# devops-aws

## Description

This repo brings some examples of CICD and IaC for AWS.

Tools:

- Terraform
- Terragrunt
- Pulumi
- Github Actions

## Management of Infrastructure
### Terraform/Terragrunt
#### Option 1 - Github Actions workflows
The workflow [update-infra-terragrunt.yml](.github/workflows/update-infra-terragrunt.yml) provides the options to create/update or delete the infrastructure using Terragrunt/Terraform.

You can choose via browser if you want create/destroy a specific resource or all resources at the same time:


#### Option 2 - local

### Pulumi
#### Option 1 - Github Actions workflows
#### Option 2 - local