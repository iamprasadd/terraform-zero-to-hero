/*terraform {
  backend "s3" {
    bucket         = "statefile-demo-12411111246" # change this
    key            = "abhi/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = false
    dynamodb_table = "terraform-lock"
  }
}*/