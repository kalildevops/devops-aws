locals {
  dirs       = split("/", path_relative_to_include())
  env        = lower(local.dirs[1]) # dir structure <repo>/<aws_account>/<env>/<region>/<module_name>/
  region     = lower(local.dirs[2]) # dir structure <repo>/<aws_account>/<env>/<region>/<module_name>/
}

# Generate AWS providers
generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
    terraform {
      required_version = "~> 1.2.7"
      required_providers {
        aws = {
          source = "hashicorp/aws"
          version = "4.25"
        }
        tls = {
          source  = "hashicorp/tls"
          version = "~> 3.4.0"
        }
        cloudinit = {
          source  = "hashicorp/cloudinit"
          version = "~> 2.2.0"
        }
        kubernetes = {
          source  = "hashicorp/kubernetes"
          version = "~> 2.12.1"
        }
      }
    }
    provider "aws" {
        region = "${local.region}"
    }
EOF
}

remote_state {
    backend = "s3"
    config = {
        bucket = "tfstate-devops-kalil"
        key = "aws/${path_relative_to_include()}/${local.env}-terraform.tfstate"
        region = "${local.region}"
    }
    generate = {
        path      = "backend.tf"
        if_exists = "overwrite_terragrunt"
    }
}

inputs = {
  project = "aws-samples"
  env    = local.env,
  region = local.region
}