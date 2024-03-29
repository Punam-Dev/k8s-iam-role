resource "aws_iam_role" "test_role" {
  name = var.role.name

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRoleWithWebIdentity"
        Effect = "Allow"
        Principal = {
          "Federated": "arn:aws:iam::730335281548:oidc-provider/token.actions.githubusercontent.com"
        },
        "Condition": {
          "StringEquals": {
              "token.actions.githubusercontent.com:aud": "sts.amazonaws.com"
          },
          "StringLike": {
              "token.actions.githubusercontent.com:sub": var.role.sub
          }
        }
      },
    ]
  })

  dynamic "inline_policy" {
    for_each = { for idx, path in var.role.policies : idx => path }
    content {
      name   = "${inline_policy.key}-policy"
      policy = file("${path.module}/${inline_policy.value}")
    }
  }
}