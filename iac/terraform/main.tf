resource "aws_s3_bucket" "s3_bucket_example" {
  bucket = "mariana-bastos-bucket-example-2025-${terraform.workspace}"

  tags = {
    Name = "My First bucket"
    Iac  = true
    context = "${terraform.workspace}"
  }
}