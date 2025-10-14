output "cdn_id" {
    value = data.aws_cloudfront_distribution.cloudfront.id
    sensitive = false
    description = "The Id of the CloudFront distribution"
}

output "cdn_domain_name" {
    value = data.aws_cloudfront_distribution.cloudfront.domain_name
    sensitive = false
    description = "The domain name corresponding to the distribution"
}