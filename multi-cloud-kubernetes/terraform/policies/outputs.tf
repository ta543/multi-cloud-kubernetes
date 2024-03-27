output "eks_admin_policy_arn" {
  description = "The ARN of the EKS administrator policy"
  value       = aws_iam_policy.eks_admin.arn
}
