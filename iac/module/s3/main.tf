resource "aws_s3_bucket" "akobr-test-bucket" {
  bucket        = "akobr-test-bucket-2"
  force_destroy = "false"
}

resource "aws_s3_bucket_notification" "bucket_notification" {
  bucket      = aws_s3_bucket.akobr-test-bucket.id
  eventbridge = true
}

resource "aws_cloudwatch_event_rule" "file_upload_rule" {
  name        = "file_upload_rule"
  description = "Trigger Step Function when object is uploaded"

  event_pattern = jsonencode({
    source: ["aws.s3"],
    "detail-type"  = [
      "Object Access Tier Changed", "Object ACL Updated", "Object Created", "Object Deleted",
      "Object Restore Completed", "Object Restore Expired", "Object Restore Initiated",
      "Object Storage Class Changed", "Object Tags Added", "Object Tags Deleted"
    ],
    detail = {
      bucket      = {
        name = [aws_s3_bucket.akobr-test-bucket.id]
      }
    }
  })
}

resource "aws_iam_role" "file_upload_event_role" {
  name = "example_event_role"

  assume_role_policy = jsonencode({
    Version   = "2012-10-17"
    Statement = [
      {
        Action    = "sts:AssumeRole"
        Effect    = "Allow"
        Principal = {
          Service = "events.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_role_policy" "cloudwatch_event_target_policy" {
  name = "cloudwatch_event_target_policy"
  role = aws_iam_role.file_upload_event_role.id

  policy = jsonencode({
    Version   = "2012-10-17"
    Statement = [
      {
        Action = [
          "states:StartExecution"
        ]
        Effect   = "Allow"
        Resource = var.step_function_read_file_arn
      }
    ]
  })
}

# Create EventBridge target for Step Function
resource "aws_cloudwatch_event_target" "file_upload_target" {
  role_arn  = aws_iam_role.file_upload_event_role.arn
  rule      = aws_cloudwatch_event_rule.file_upload_rule.name
  arn       = var.step_function_read_file_arn
  target_id = "file_upload_target"
}