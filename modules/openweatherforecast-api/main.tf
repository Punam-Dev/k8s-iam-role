data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

locals {
  asset = {
    id = "8787",
    name = "OpenWeatherforecast Api"
  }
}

module "openWeatherforecast_terraform_role" {
  source = "../assume-role/github-action-assume-with-external-id"
  base_role_arn = [var.terraform_base_role_arn]
  role = {
    name = "openwatherforecast-terraform",
    external_id = "52c1fdb4-e26c-4953-910e-ac951f1177c8",
    sub = "repo:Punam-Dev/OpenWeatherForecast.Api:*"
    policies = [ 
      "modules/openweatherforecast-api/policies/s3.json", 
    ]
  }
}