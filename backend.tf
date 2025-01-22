terraform {
  backend "s3" {
    bucket = ""
    key    = "week10b/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terrafrom-lock"
    encrypt = true
  }
}