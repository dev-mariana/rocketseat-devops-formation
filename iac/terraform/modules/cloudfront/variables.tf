variable "origin_id" {
  type        = string
  description = "The origin Id for the CloudFront distribution"
}

variable "bucket_domain_name" {
  type        = string
  description = "The domain name of the S3 bucket to be used as origin"
}