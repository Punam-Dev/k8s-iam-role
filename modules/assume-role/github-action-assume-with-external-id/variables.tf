variable "base_role_arn" { 
    type = list(string)
}

variable "role" {
  type = object({
    name = string
    external_id = string
    sub = string
    policies = list(string)
  })
}