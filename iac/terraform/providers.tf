terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.14.1"
    }
  }
  backend "s3" {
    bucket  = "rocketseat-state-bucket-tf-br-25"
    region  = "us-east-2"
    key     = "terraform.tfstate"
    encrypt = true
  }

}

variable "profile" {
  type = string
}

provider "aws" {
  region  = "us-east-2"
  profile = var.profile
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = var.state_bucket

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_bucket_versioning" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.bucket

  versioning_configuration {
    status = "Enabled"
  }

  depends_on = [aws_s3_bucket.terraform_state]
}