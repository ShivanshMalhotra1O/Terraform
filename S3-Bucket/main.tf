resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = var.bucket_name

  tags = {
    Name = var.bucket_name
    Environment = var.environment
  }
}

locals {
    bucket_version = var.bucket_versioning == true ? "Enabled" : "Suspended"
}

resource "aws_s3_bucket_versioning" "my_s3_bucket_versioning" {
  bucket = aws_s3_bucket.my_s3_bucket.id
  versioning_configuration {
    status = local.bucket_version
  }
}