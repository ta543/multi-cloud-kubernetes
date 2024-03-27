output "cluster_name" {
  description = "The name of the EKS cluster."
  value       = aws_eks_cluster.cluster.name
}

output "cluster_endpoint" {
  description = "The endpoint for the EKS cluster API."
  value       = aws_eks_cluster.cluster.endpoint
}

output "cluster_arn" {
  description = "The Amazon Resource Name (ARN) of the EKS cluster."
  value       = aws_eks_cluster.cluster.arn
}

output "node_group_arn" {
  description = "The ARN of the EKS node group."
  value       = aws_eks_node_group.node_group.arn
}
