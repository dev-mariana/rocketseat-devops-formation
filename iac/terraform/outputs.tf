output "aws_s3_bucket" {
  value = module.s3.bucket_domain_name
  sensitive = false
  description = "The domain name of the S3 bucket"
}

output "aws_cloudfront_distribution" {
  value = module.cloudfront.cdn_domain_name
  sensitive = false
  description = "The domain name corresponding to the CloudFront distribution"
}