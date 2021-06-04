terraform {
  required_version = ">= 0.15.0"
  required_providers {
    kubernetes = {
      # https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs
      source  = "hashicorp/kubernetes"
      version = ">= 2.0"
    }
    null = {
      # https://registry.terraform.io/providers/hashicorp/null/latest/docs
      source  = "hashicorp/null"
      version = ">= 3.0"
    }
  }
}
