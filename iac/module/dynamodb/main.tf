resource "aws_dynamodb_table" "akobr-test-account" {
  attribute {
    name = "id"
    type = "N"
  }

  billing_mode = "PROVISIONED"
  hash_key     = "id"
  name         = "akobr-test-account"

  point_in_time_recovery {
    enabled = "false"
  }

  read_capacity    = "1"
  stream_enabled   = "true"
  stream_view_type = "NEW_IMAGE"
  table_class      = "STANDARD"
  write_capacity   = "1"
}

resource "aws_lambda_event_source_mapping" "dynamodb_trigger_mapping" {
  event_source_arn  = aws_dynamodb_table.akobr-test-account.stream_arn
  function_name     = var.lambda_db_to_step_arn
  starting_position = "LATEST"
}
