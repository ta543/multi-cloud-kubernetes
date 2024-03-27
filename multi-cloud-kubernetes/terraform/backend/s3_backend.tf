terraform {
  required_version = ">= 0.12"

  backend "s3" {
    bucket         = "mk-project-k8s-state-2024"
    key            = "terraform/state"
    region         = "us-west-2"
    dynamodb_table = "mk-project-k8s-lock-2024"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-west-2"
}
