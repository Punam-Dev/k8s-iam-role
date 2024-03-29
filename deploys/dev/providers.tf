terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "${var.region}"
  # assume_role {
  #   role_arn = var.terraform_base_role_arn
  #   session_name = var.session_name
  # }
  assume_role_with_web_identity {
    role_arn                = var.terraform_base_role_arn
    session_name            = var.session_name
  }
  default_tags {
    tags = {
      Environment = "Dev"
    }
  }
}