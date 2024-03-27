# Example IAM policy for EKS cluster administrators
resource "aws_iam_policy" "eks_admin" {
  name        = "eks-admin-policy"
  description = "EKS Administrator policy for managing clusters"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = [
          "eks:DescribeCluster",
          "eks:ListClusters",
          "eks:UpdateClusterConfig",
          "eks:UpdateClusterVersion",
        ],
        Effect   = "Allow",
        Resource = "*"
      },
    ]
  })
}

resource "aws_security_group_rule" "allow_http_https" {
  type             = "ingress"
  from_port        = 80
  to_port          = 443
  protocol         = "tcp"
  cidr_blocks      = ["0.0.0.0/0"]
  security_group_id = var.security_group_id
}
