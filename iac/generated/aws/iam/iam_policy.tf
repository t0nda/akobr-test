resource "aws_iam_policy" "tfer--Amazon_EventBridge_Invoke_Step_Functions_1380056641" {
  name = "Amazon_EventBridge_Invoke_Step_Functions_1380056641"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "states:StartExecution"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:states:eu-central-1:582242502570:stateMachine:MyStateMachine"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--LambdaInvokeScopedAccessPolicy-1c8524e8-bc81-464c-9cf8-fa83eab61392" {
  description = "Allow AWS Step Functions to invoke Lambda functions on your behalf"
  name        = "LambdaInvokeScopedAccessPolicy-1c8524e8-bc81-464c-9cf8-fa83eab61392"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "lambda:InvokeFunction"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:lambda:eu-central-1:582242502570:function:readfile-ReadFileFunction-CH00rlFFqtsZ:*"
      ]
    },
    {
      "Action": [
        "lambda:InvokeFunction"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:lambda:eu-central-1:582242502570:function:readfile-ReadFileFunction-CH00rlFFqtsZ"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--LambdaInvokeScopedAccessPolicy-3a28ace4-70b7-49f7-8828-a47554c8bc09" {
  description = "Allow AWS Step Functions to invoke Lambda functions on your behalf"
  name        = "LambdaInvokeScopedAccessPolicy-3a28ace4-70b7-49f7-8828-a47554c8bc09"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "lambda:InvokeFunction"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:lambda:eu-central-1:582242502570:function:lambda-read-form-db-2-ReadFromDBFunction-jdRUYiThNzK2:*"
      ]
    },
    {
      "Action": [
        "lambda:InvokeFunction"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:lambda:eu-central-1:582242502570:function:lambda-read-form-db-2-ReadFromDBFunction-jdRUYiThNzK2"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--LambdaInvokeScopedAccessPolicy-87ba114e-1cec-49bc-aeac-c0cf508ce8af" {
  description = "Allow AWS Step Functions to invoke Lambda functions on your behalf"
  name        = "LambdaInvokeScopedAccessPolicy-87ba114e-1cec-49bc-aeac-c0cf508ce8af"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "lambda:InvokeFunction"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:lambda:eu-central-1:582242502570:function:readfile-ReadFileFunction-CH00rlFFqtsZ:*"
      ]
    },
    {
      "Action": [
        "lambda:InvokeFunction"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:lambda:eu-central-1:582242502570:function:readfile-ReadFileFunction-CH00rlFFqtsZ"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--XRayAccessPolicy-16a781f7-902a-4432-85b7-86b498c90854" {
  description = "Allow AWS Step Functions to call X-Ray daemon on your behalf"
  name        = "XRayAccessPolicy-16a781f7-902a-4432-85b7-86b498c90854"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "xray:PutTraceSegments",
        "xray:PutTelemetryRecords",
        "xray:GetSamplingRules",
        "xray:GetSamplingTargets"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--XRayAccessPolicy-3b39a036-2309-4296-9711-43a4aed54c2a" {
  description = "Allow AWS Step Functions to call X-Ray daemon on your behalf"
  name        = "XRayAccessPolicy-3b39a036-2309-4296-9711-43a4aed54c2a"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "xray:PutTraceSegments",
        "xray:PutTelemetryRecords",
        "xray:GetSamplingRules",
        "xray:GetSamplingTargets"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--XRayAccessPolicy-72130e2d-0d95-4c6b-94d4-be1b8e6a40d3" {
  description = "Allow AWS Step Functions to call X-Ray daemon on your behalf"
  name        = "XRayAccessPolicy-72130e2d-0d95-4c6b-94d4-be1b8e6a40d3"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "xray:PutTraceSegments",
        "xray:PutTelemetryRecords",
        "xray:GetSamplingRules",
        "xray:GetSamplingTargets"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--XRayAccessPolicy-e27b3f6a-0e35-4e18-9b91-649263a66e06" {
  description = "Allow AWS Step Functions to call X-Ray daemon on your behalf"
  name        = "XRayAccessPolicy-e27b3f6a-0e35-4e18-9b91-649263a66e06"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "xray:PutTraceSegments",
        "xray:PutTelemetryRecords",
        "xray:GetSamplingRules",
        "xray:GetSamplingTargets"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}
