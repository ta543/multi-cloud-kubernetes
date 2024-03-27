terraform {
  backend "s3" {
    bucket         = "project-k8s-staging-tfstate-2024"
    key            = "environment/staging/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "project-k8s-staging-tflock-2024"
    encrypt        = true
  }
}
