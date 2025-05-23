terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket-33"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
