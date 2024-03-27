variable "project_id" {
  description = "The GCP project ID"
  default     = "multi-cloud-kubernetes-project"
}

variable "region" {
  description = "The region where the GKE cluster will be created"
  default     = "us-central1"
}

variable "cluster_name" {
  description = "The name of the GKE cluster"
  default     = "my-gke-cluster"
}

variable "node_count" {
  description = "The number of nodes to be created in the primary node pool"
  default     = 3
}

variable "preemptible_nodes" {
  description = "Determines if the nodes are preemptible"
  default     = false
}

variable "machine_type" {
  description = "The machine type of the GKE nodes"
  default     = "e2-medium"
}

variable "location" {
  description = "The region where the GKE cluster will be created"
  default     = "us-central1"
}










