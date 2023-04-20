resource "aws_s3_bucket" "tfer--akobr-readfile" {
  arn                 = "arn:aws:s3:::akobr-readfile"
  bucket              = "akobr-readfile"
  force_destroy       = "false"
  hosted_zone_id      = "Z21DNDUVLTQW6Q"
  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--akobr-test-bucket" {
  arn                 = "arn:aws:s3:::akobr-test-bucket"
  bucket              = "akobr-test-bucket"
  force_destroy       = "false"
  hosted_zone_id      = "Z21DNDUVLTQW6Q"
  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "true"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--aws-cloudtrail-logs-582242502570-8c0c7ca9" {
  arn                 = "arn:aws:s3:::aws-cloudtrail-logs-582242502570-8c0c7ca9"
  bucket              = "aws-cloudtrail-logs-582242502570-8c0c7ca9"
  force_destroy       = "false"
  hosted_zone_id      = "Z21DNDUVLTQW6Q"
  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:GetBucketAcl",
      "Condition": {
        "StringEquals": {
          "AWS:SourceArn": "arn:aws:cloudtrail:eu-central-1:582242502570:trail/akobr-test-trail"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudtrail.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::aws-cloudtrail-logs-582242502570-8c0c7ca9",
      "Sid": "AWSCloudTrailAclCheck20150319"
    },
    {
      "Action": "s3:PutObject",
      "Condition": {
        "StringEquals": {
          "AWS:SourceArn": "arn:aws:cloudtrail:eu-central-1:582242502570:trail/akobr-test-trail",
          "s3:x-amz-acl": "bucket-owner-full-control"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudtrail.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::aws-cloudtrail-logs-582242502570-8c0c7ca9/AWSLogs/582242502570/*",
      "Sid": "AWSCloudTrailWrite20150319"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  request_payer = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--aws-sam-cli-managed-default-samclisourcebucket-khvdvm7bl5yf" {
  arn                 = "arn:aws:s3:::aws-sam-cli-managed-default-samclisourcebucket-khvdvm7bl5yf"
  bucket              = "aws-sam-cli-managed-default-samclisourcebucket-khvdvm7bl5yf"
  force_destroy       = "false"
  hosted_zone_id      = "Z21DNDUVLTQW6Q"
  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:GetObject",
      "Condition": {
        "StringEquals": {
          "aws:SourceAccount": "582242502570"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "serverlessrepo.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::aws-sam-cli-managed-default-samclisourcebucket-khvdvm7bl5yf/*"
    },
    {
      "Action": "s3:*",
      "Condition": {
        "Bool": {
          "aws:SecureTransport": "false"
        }
      },
      "Effect": "Deny",
      "Principal": "*",
      "Resource": [
        "arn:aws:s3:::aws-sam-cli-managed-default-samclisourcebucket-khvdvm7bl5yf",
        "arn:aws:s3:::aws-sam-cli-managed-default-samclisourcebucket-khvdvm7bl5yf/*"
      ]
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  request_payer = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "aws:kms"
      }

      bucket_key_enabled = "false"
    }
  }

  tags = {
    ManagedStackSource = "AwsSamCli"
  }

  tags_all = {
    ManagedStackSource = "AwsSamCli"
  }

  versioning {
    enabled    = "true"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--lambda-db-to-step" {
  arn                 = "arn:aws:s3:::lambda-db-to-step"
  bucket              = "lambda-db-to-step"
  force_destroy       = "false"
  hosted_zone_id      = "Z21DNDUVLTQW6Q"
  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--lambda-read-from-db" {
  arn                 = "arn:aws:s3:::lambda-read-from-db"
  bucket              = "lambda-read-from-db"
  force_destroy       = "false"
  hosted_zone_id      = "Z21DNDUVLTQW6Q"
  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--lambda-store-to-db" {
  arn                 = "arn:aws:s3:::lambda-store-to-db"
  bucket              = "lambda-store-to-db"
  force_destroy       = "false"
  hosted_zone_id      = "Z21DNDUVLTQW6Q"
  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--lambda-update-account-amount" {
  arn                 = "arn:aws:s3:::lambda-update-account-amount"
  bucket              = "lambda-update-account-amount"
  force_destroy       = "false"
  hosted_zone_id      = "Z21DNDUVLTQW6Q"
  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}
