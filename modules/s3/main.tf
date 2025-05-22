resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
  force_destroy = true
}

resource "random_id" "id" {
  byte_length = 4
}
