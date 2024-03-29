# terraform {
#   backend "s3" {
#     bucket = "k8s-iam-role-dev"
#     key = "k8s-iam-role.tfstate"
#     region = "us-east-1"
#     encrypt = true
#     # assume_role = {
#     #   role_arn = "arn:aws:iam::730335281548:role/k8s-iam-oidc-role"
#     # }
#   }
# }