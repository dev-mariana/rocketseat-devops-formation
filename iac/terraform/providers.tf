terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.14.1"
    }
  }
}

variable "profile" {
  type = string
}

provider "aws" {
  region  = "us-east-2"
  profile = var.profile
}