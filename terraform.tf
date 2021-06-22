terraform {
  required_version = ">= 0.15"

  required_providers {
    random = {
      # https://registry.terraform.io/providers/hashicorp/random/latest/docs
      source  = "hashicorp/random"
      version = ">= 3.0"
    }

    kubernetes = {
      # https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs
      source  = "hashicorp/kubernetes"
      version = ">= 2.0"
    }
  }
}
