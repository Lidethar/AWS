resource "aws_iam_policy" "politica" {
  name        = "prueba_politica1"
  path        = "/"
  description = "Prueba creacion de nueva politica"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:list*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}