output "lambda_read_file" {
  value       = aws_lambda_function.lambda-read-file
  description = "The Lambda function for read file from S3"
}

output "lambda_store_to_db" {
  value       = aws_lambda_function.lambda-store-to-db
}

output "lambda_db_to_step" {
  value       = aws_lambda_function.lambda-db-to-step
}

output "lambda_update_account_amount" {
  value       = aws_lambda_function.lambda-update-account-amount
}