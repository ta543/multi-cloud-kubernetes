output "cluster_id" {
  description = "The ID of the EKS cluster in the staging environment"
  value       = module.staging_eks_cluster.cluster_id
}

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane in the staging environment"
  value       = module.staging_eks_cluster.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group IDs attached to the cluster control plane in the staging environment."
  value       = module.staging_eks_cluster.cluster_security_group_id
}
