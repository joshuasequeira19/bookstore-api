# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a DynamoDB table for our books
resource "aws_dynamodb_table" "books_table" {
  name           = "Books"
  billing_mode   = "PROVISIONED"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "id"
  
  attribute {
    name = "id"
    type = "S"
  }
}

# Create an S3 bucket
resource "aws_s3_bucket" "terraform_state" {
  bucket = "joshuasequeira2000190-bookshop-terraform-state"
}
