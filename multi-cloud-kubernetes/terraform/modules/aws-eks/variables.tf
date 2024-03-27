variable "region" {
  description = "AWS region where the EKS cluster will be created."
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "The name of the EKS cluster."
  type        = string
  default     = "dev-eks-cluster"
}

variable "subnet_ids" {
  description = "A list of subnet IDs to associate with the EKS Cluster."
  type        = list(string)
  default     = ["subnet-07456e9f8b3a1e6aa", "subnet-0e32c5d2b9c697c4f"]
}

variable "desired_capacity" {
  description = "Desired number of worker nodes in the node group."
  type        = number
  default     = 2
}

variable "max_capacity" {
  description = "Maximum number of worker nodes in the node group."
  type        = number
  default     = 4
}

variable "min_capacity" {
  description = "Minimum number of worker nodes in the node group."
  type        = number
  default     = 1
}
