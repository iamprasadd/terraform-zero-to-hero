provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  subnet_id = "subnet-0f3d24196e87906a6"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "statefile-demo-12411111246"
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}