resource "aws_iam_role" "tfer--AWSServiceRoleForAPIGateway" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ops.apigateway.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "The Service Linked Role is used by Amazon API Gateway."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/APIGatewayServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAPIGateway"
  path                 = "/aws-service-role/ops.apigateway.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForApplicationAutoScaling_DynamoDBTable" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "dynamodb.application-autoscaling.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSApplicationAutoscalingDynamoDBTablePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForApplicationAutoScaling_DynamoDBTable"
  path                 = "/aws-service-role/dynamodb.application-autoscaling.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForOrganizations" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "organizations.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Service-linked role used by AWS Organizations to enable integration of other AWS services with Organizations."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSOrganizationsServiceTrustPolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForOrganizations"
  path                 = "/aws-service-role/organizations.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForSupport" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "support.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Enables resource access for AWS to provide billing, administrative and support services"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForSupport"
  path                 = "/aws-service-role/support.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForTrustedAdvisor" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "trustedadvisor.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Access for the AWS Trusted Advisor Service to help reduce cost, increase performance, and improve security of your AWS environment."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForTrustedAdvisor"
  path                 = "/aws-service-role/trustedadvisor.amazonaws.com/"
}

resource "aws_iam_role" "tfer--Amazon_EventBridge_Invoke_Step_Functions_1380056641" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "events.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::582242502570:policy/service-role/Amazon_EventBridge_Invoke_Step_Functions_1380056641"]
  max_session_duration = "3600"
  name                 = "Amazon_EventBridge_Invoke_Step_Functions_1380056641"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--StepFunctions-HelloWorld-role-13892438" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "states.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::582242502570:policy/service-role/XRayAccessPolicy-3b39a036-2309-4296-9711-43a4aed54c2a"]
  max_session_duration = "3600"
  name                 = "StepFunctions-HelloWorld-role-13892438"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--StepFunctions-MyStateMachine-role-24657fce" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "states.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::582242502570:policy/service-role/LambdaInvokeScopedAccessPolicy-1c8524e8-bc81-464c-9cf8-fa83eab61392", "arn:aws:iam::582242502570:policy/service-role/LambdaInvokeScopedAccessPolicy-87ba114e-1cec-49bc-aeac-c0cf508ce8af", "arn:aws:iam::582242502570:policy/service-role/XRayAccessPolicy-16a781f7-902a-4432-85b7-86b498c90854", "arn:aws:iam::aws:policy/AWSLambdaExecute", "arn:aws:iam::aws:policy/service-role/AWSLambdaRole"]
  max_session_duration = "3600"
  name                 = "StepFunctions-MyStateMachine-role-24657fce"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--StepFunctions-UpdateAccountInDB-role-b2d942e9" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "states.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::582242502570:policy/service-role/LambdaInvokeScopedAccessPolicy-3a28ace4-70b7-49f7-8828-a47554c8bc09", "arn:aws:iam::582242502570:policy/service-role/XRayAccessPolicy-72130e2d-0d95-4c6b-94d4-be1b8e6a40d3", "arn:aws:iam::aws:policy/AWSLambda_FullAccess"]
  max_session_duration = "3600"
  name                 = "StepFunctions-UpdateAccountInDB-role-b2d942e9"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--lamba-update-account-amou-UpdateAccountAmountFunct-ADPUD24S3866" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
  max_session_duration = "3600"
  name                 = "lamba-update-account-amou-UpdateAccountAmountFunct-ADPUD24S3866"
  path                 = "/"

  tags = {
    "lambda:createdBy" = "SAM"
  }

  tags_all = {
    "lambda:createdBy" = "SAM"
  }
}

resource "aws_iam_role" "tfer--lambda-db-to-step-DBToStepFunctionRole-1BCLCZ64N3QUM" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AWSStepFunctionsFullAccess", "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess", "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
  max_session_duration = "3600"
  name                 = "lambda-db-to-step-DBToStepFunctionRole-1BCLCZ64N3QUM"
  path                 = "/"

  tags = {
    "lambda:createdBy" = "SAM"
  }

  tags_all = {
    "lambda:createdBy" = "SAM"
  }
}

resource "aws_iam_role" "tfer--lambda-read-file-ReadFileFunctionRole-EFXGQOBHB5RH" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonS3FullAccess", "arn:aws:iam::aws:policy/AmazonS3OutpostsFullAccess", "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
  max_session_duration = "3600"
  name                 = "lambda-read-file-ReadFileFunctionRole-EFXGQOBHB5RH"
  path                 = "/"

  tags = {
    "lambda:createdBy" = "SAM"
  }

  tags_all = {
    "lambda:createdBy" = "SAM"
  }
}

resource "aws_iam_role" "tfer--lambda-read-form-db-2-ReadFromDBFunctionRole-1XS7OJVO64UC7" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess", "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
  max_session_duration = "3600"
  name                 = "lambda-read-form-db-2-ReadFromDBFunctionRole-1XS7OJVO64UC7"
  path                 = "/"

  tags = {
    "lambda:createdBy" = "SAM"
  }

  tags_all = {
    "lambda:createdBy" = "SAM"
  }
}

resource "aws_iam_role" "tfer--lambda-store-to-db-StoreToDBFunctionRole-1Q27HWRJ6H37R" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess", "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
  max_session_duration = "3600"
  name                 = "lambda-store-to-db-StoreToDBFunctionRole-1Q27HWRJ6H37R"
  path                 = "/"

  tags = {
    "lambda:createdBy" = "SAM"
  }

  tags_all = {
    "lambda:createdBy" = "SAM"
  }
}

resource "aws_iam_role" "tfer--lambda_role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  max_session_duration = "3600"
  name                 = "lambda_role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--readfile-ReadFileFunctionRole-174X0W1E7BSON" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonS3FullAccess", "arn:aws:iam::aws:policy/AmazonS3OutpostsFullAccess", "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
  max_session_duration = "3600"
  name                 = "readfile-ReadFileFunctionRole-174X0W1E7BSON"
  path                 = "/"

  tags = {
    "lambda:createdBy" = "SAM"
  }

  tags_all = {
    "lambda:createdBy" = "SAM"
  }
}
