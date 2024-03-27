variable "region" {
  description = "AWS region for the production environment"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Name of the EKS cluster in the production environment"
  type        = string
  default     = "prod-eks-cluster"
}

variable "cluster_version" {
  description = "EKS cluster version for the production environment"
  type        = string
  default     = "1.21"
}

variable "instance_type" {
  description = "EC2 instance type for the EKS nodes in the production environment"
  type        = string
  default     = "m5.large"
}

variable "desired_capacity" {
  description = "Desired number of nodes in the node group for the production environment"
  type        = number
  default     = 3
}

variable "max_capacity" {
  description = "Maximum number of nodes in the node group for the production environment"
  type        = number
  default     = 5
}

variable "min_capacity" {
  description = "Minimum number of nodes in the node group for the production environment"
  type        = number
  default     = 3
}
