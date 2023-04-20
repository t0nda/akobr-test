resource "aws_sfn_state_machine" "tfer--MyStateMachine" {
  definition = "{\n  \"Comment\": \"A description of my state machine\",\n  \"StartAt\": \"Read from S3\",\n  \"States\": {\n    \"Read from S3\": {\n      \"Type\": \"Task\",\n      \"Resource\": \"arn:aws:states:::lambda:invoke\",\n      \"OutputPath\": \"$.Payload\",\n      \"Parameters\": {\n        \"Payload.$\": \"$\",\n        \"FunctionName\": \"arn:aws:lambda:eu-central-1:582242502570:function:lambda-read-file-ReadFileFunction-AfLOK28n7evd:$LATEST\"\n      },\n      \"Retry\": [\n        {\n          \"ErrorEquals\": [\n            \"Lambda.ServiceException\",\n            \"Lambda.AWSLambdaException\",\n            \"Lambda.SdkClientException\",\n            \"Lambda.TooManyRequestsException\"\n          ],\n          \"IntervalSeconds\": 2,\n          \"MaxAttempts\": 6,\n          \"BackoffRate\": 2\n        }\n      ],\n      \"Next\": \"Store to DB\"\n    },\n    \"Store to DB\": {\n      \"Type\": \"Task\",\n      \"Resource\": \"arn:aws:states:::lambda:invoke\",\n      \"OutputPath\": \"$.Payload\",\n      \"Parameters\": {\n        \"Payload.$\": \"$\",\n        \"FunctionName\": \"arn:aws:lambda:eu-central-1:582242502570:function:lambda-store-to-db-StoreToDBFunction-1EUZlTCN3d5B:$LATEST\"\n      },\n      \"Retry\": [\n        {\n          \"ErrorEquals\": [\n            \"Lambda.ServiceException\",\n            \"Lambda.AWSLambdaException\",\n            \"Lambda.SdkClientException\",\n            \"Lambda.TooManyRequestsException\"\n          ],\n          \"IntervalSeconds\": 2,\n          \"MaxAttempts\": 6,\n          \"BackoffRate\": 2\n        }\n      ],\n      \"End\": true\n    }\n  }\n}"

  logging_configuration {
    include_execution_data = "false"
    level                  = "OFF"
  }

  name     = "MyStateMachine"
  role_arn = "arn:aws:iam::582242502570:role/service-role/StepFunctions-MyStateMachine-role-24657fce"

  tracing_configuration {
    enabled = "false"
  }

  type = "STANDARD"
}

resource "aws_sfn_state_machine" "tfer--UpdateAccountInDB" {
  definition = "{\n  \"Comment\": \"A description of my state machine\",\n  \"StartAt\": \"Update amount value\",\n  \"States\": {\n    \"Update amount value\": {\n      \"Type\": \"Task\",\n      \"Resource\": \"arn:aws:states:::lambda:invoke\",\n      \"OutputPath\": \"$.Payload\",\n      \"Parameters\": {\n        \"Payload.$\": \"$\",\n        \"FunctionName\": \"arn:aws:lambda:eu-central-1:582242502570:function:lamba-update-account-amou-UpdateAccountAmountFunct-Y8brQpx7wW2i:$LATEST\"\n      },\n      \"Retry\": [\n        {\n          \"ErrorEquals\": [\n            \"Lambda.ServiceException\",\n            \"Lambda.AWSLambdaException\",\n            \"Lambda.SdkClientException\",\n            \"Lambda.TooManyRequestsException\"\n          ],\n          \"IntervalSeconds\": 2,\n          \"MaxAttempts\": 6,\n          \"BackoffRate\": 2\n        }\n      ],\n      \"Next\": \"Store to DB\"\n    },\n    \"Store to DB\": {\n      \"Type\": \"Task\",\n      \"Resource\": \"arn:aws:states:::lambda:invoke\",\n      \"OutputPath\": \"$.Payload\",\n      \"Parameters\": {\n        \"Payload.$\": \"$\",\n        \"FunctionName\": \"arn:aws:lambda:eu-central-1:582242502570:function:lambda-store-to-db-StoreToDBFunction-1EUZlTCN3d5B:$LATEST\"\n      },\n      \"Retry\": [\n        {\n          \"ErrorEquals\": [\n            \"Lambda.ServiceException\",\n            \"Lambda.AWSLambdaException\",\n            \"Lambda.SdkClientException\",\n            \"Lambda.TooManyRequestsException\"\n          ],\n          \"IntervalSeconds\": 2,\n          \"MaxAttempts\": 6,\n          \"BackoffRate\": 2\n        }\n      ],\n      \"End\": true\n    }\n  }\n}"

  logging_configuration {
    include_execution_data = "false"
    level                  = "OFF"
  }

  name     = "UpdateAccountInDB"
  role_arn = "arn:aws:iam::582242502570:role/service-role/StepFunctions-UpdateAccountInDB-role-b2d942e9"

  tracing_configuration {
    enabled = "false"
  }

  type = "STANDARD"
}
