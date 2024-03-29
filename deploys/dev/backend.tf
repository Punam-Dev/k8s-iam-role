terraform {
  backend "s3" {
    bucket = "k8s-iam-role-dev"
    key = "k8s-iam-role.tfstate"
    region = "us-east-1"
    encrypt = true
  }
}