module "openweatherforecast_roles" {
  source = "../../modules/openweatherforecast-api"
  oidc_provider = var.oidc_provider_apps
  terraform_base_role_arn = var.terraform_base_role_arn
  environment = "dev"
}