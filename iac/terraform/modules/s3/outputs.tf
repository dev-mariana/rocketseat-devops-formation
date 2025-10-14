output "bucket_domain_name" {
  value       = data.aws_s3_bucket.s3_bucket_example.bucket_domain_name
  sensitive   = false
  description = "The domain name of the S3 bucket"
}

output "bucket_id" {
  value       = data.aws_s3_bucket.s3_bucket_example.id
  sensitive   = false
  description = "The Id of the S3 bucket"
}
