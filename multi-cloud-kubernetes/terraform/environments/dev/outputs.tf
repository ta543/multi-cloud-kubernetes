output "cluster_id" {
  description = "The ID of the EKS cluster"
  value       = module.dev_eks_cluster.cluster_id
}

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = module.dev_eks_cluster.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group IDs attached to the cluster control plane."
  value       = module.dev_eks_cluster.cluster_security_group_id
}
