variable "bucket_name" {
  description = "Prefix for the S3 bucket name"
  type        = string
}

variable "tags" {
  description = "Tags to assign to the bucket"
  type        = map(string)
  default     = {}
}
