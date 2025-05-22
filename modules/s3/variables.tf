variable "bucket_name" {
  default = "terraform-cicd-demo-bucket-${random_id.id.hex}"
}


resource "random_id" "id" {
  byte_length = 4
}