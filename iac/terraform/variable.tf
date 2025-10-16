variable "state_bucket" {
  type        = string
  default     = "rocketseat-state-bucket-tf-br-25"
  description = "The name of the S3 bucket to store Terraform state files"
}