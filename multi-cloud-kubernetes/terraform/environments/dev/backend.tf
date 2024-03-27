terraform {
  backend "s3" {
    bucket         = "project-k8s-dev-tfstate-2024"
    key            = "environment/dev/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "project-k8s-dev-tflock-2024"
    encrypt        = true
  }
}
