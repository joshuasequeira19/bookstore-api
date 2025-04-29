# Output the DynamoDB table name
output "dynamodb_table_name" {
  value       = aws_dynamodb_table.books_table.name
  description = "The name of the DynamoDB table"
}

# Output the DynamoDB table ARN
output "dynamodb_table_arn" {
  value       = aws_dynamodb_table.books_table.arn
  description = "The ARN of the DynamoDB table"
}

# Output the S3 bucket name for Terraform state
output "terraform_state_bucket" {
  value       = aws_s3_bucket.terraform_state.bucket
  description = "The name of the S3 bucket for Terraform state"
}
