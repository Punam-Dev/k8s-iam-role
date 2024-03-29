variable "terraform_base_role_arn" {default = "arn:aws:iam::730335281548:role/k8s-iam-oidc-role"}

variable "oidc_provider_apps" {default = ""}

variable "region" {default = ""}

variable "session_name" {default = "k8s-iam-role-deployment"}

variable "app_name" {default = "k8s-iam-role"}
