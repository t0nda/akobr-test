resource "aws_s3_bucket_policy" "tfer--aws-cloudtrail-logs-582242502570-8c0c7ca9" {
  bucket = "aws-cloudtrail-logs-582242502570-8c0c7ca9"
  policy = "{\"Statement\":[{\"Action\":\"s3:GetBucketAcl\",\"Condition\":{\"StringEquals\":{\"AWS:SourceArn\":\"arn:aws:cloudtrail:eu-central-1:582242502570:trail/akobr-test-trail\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"cloudtrail.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::aws-cloudtrail-logs-582242502570-8c0c7ca9\",\"Sid\":\"AWSCloudTrailAclCheck20150319\"},{\"Action\":\"s3:PutObject\",\"Condition\":{\"StringEquals\":{\"AWS:SourceArn\":\"arn:aws:cloudtrail:eu-central-1:582242502570:trail/akobr-test-trail\",\"s3:x-amz-acl\":\"bucket-owner-full-control\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"cloudtrail.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::aws-cloudtrail-logs-582242502570-8c0c7ca9/AWSLogs/582242502570/*\",\"Sid\":\"AWSCloudTrailWrite20150319\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "tfer--aws-sam-cli-managed-default-samclisourcebucket-khvdvm7bl5yf" {
  bucket = "aws-sam-cli-managed-default-samclisourcebucket-khvdvm7bl5yf"
  policy = "{\"Statement\":[{\"Action\":\"s3:GetObject\",\"Condition\":{\"StringEquals\":{\"aws:SourceAccount\":\"582242502570\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"serverlessrepo.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::aws-sam-cli-managed-default-samclisourcebucket-khvdvm7bl5yf/*\"},{\"Action\":\"s3:*\",\"Condition\":{\"Bool\":{\"aws:SecureTransport\":\"false\"}},\"Effect\":\"Deny\",\"Principal\":\"*\",\"Resource\":[\"arn:aws:s3:::aws-sam-cli-managed-default-samclisourcebucket-khvdvm7bl5yf\",\"arn:aws:s3:::aws-sam-cli-managed-default-samclisourcebucket-khvdvm7bl5yf/*\"]}],\"Version\":\"2008-10-17\"}"
}
