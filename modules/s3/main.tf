resource "random_id" "id" {
  byte_length = 4
}

resource "aws_s3_bucket" "example" {
  bucket        = "${var.bucket_name}-${random_id.id.hex}"
  force_destroy = true
  tags = var.tags
}
