terraform {
  backend "s3" {
    bucket         = "terraform-backend34"
    key            = "dev/terraform.tfstate"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
