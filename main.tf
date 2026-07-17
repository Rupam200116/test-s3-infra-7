provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "test-s3" {
  bucket = "test-s3-bucket"
  acl    = "private"

  tags = {
    Project     = "test-s3"
    ManagedBy   = "terraform"
  }
}

output "public_ip" {
  value = aws_instance.example.public_ip
}

output "bucket_name" {
  value = aws_s3_bucket.test-s3.id
}

output "endpoint" {
  value = aws_s3_bucket.test-s3.website_endpoint
}