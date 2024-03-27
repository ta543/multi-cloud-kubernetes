terraform {
  backend "s3" {
    bucket         = "project-k8s-prod-tfstate-2024"
    key            = "environment/prod/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "project-k8s-prod-tflock-2024"
    encrypt        = true
  }
}
