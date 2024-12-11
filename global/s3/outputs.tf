output "s3_bucket_arn" {
  value = aws_s3_bucket.terraform_state_hands_on.arn
  description = "The ARN of the S3 bucket"
}

output "dynamodb_table_name" {
  value = aws_dynamodb_table.terraform_locks_hands_on.name
  description = "The name of the DynamoDB table"
}
