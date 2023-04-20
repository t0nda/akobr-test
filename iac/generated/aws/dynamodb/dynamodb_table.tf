resource "aws_dynamodb_table" "tfer--akobr-test-account" {
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
