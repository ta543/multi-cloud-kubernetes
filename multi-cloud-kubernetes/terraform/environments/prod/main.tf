provider "aws" {
  region = var.region
}

module "prod_eks_cluster" {
  source = "../../modules/aws-eks"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  node_group_settings = {
    instance_type = var.instance_type
    desired_capacity = var.desired_capacity
    max_capacity     = var.max_capacity
    min_capacity     = var.min_capacity
  }

  tags = {
    Environment = "production"
  }
}
