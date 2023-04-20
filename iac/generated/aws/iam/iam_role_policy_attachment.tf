resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAPIGateway_APIGatewayServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/APIGatewayServiceRolePolicy"
  role       = "AWSServiceRoleForAPIGateway"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForApplicationAutoScaling_DynamoDBTable_AWSApplicationAutoscalingDynamoDBTablePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSApplicationAutoscalingDynamoDBTablePolicy"
  role       = "AWSServiceRoleForApplicationAutoScaling_DynamoDBTable"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForOrganizations_AWSOrganizationsServiceTrustPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSOrganizationsServiceTrustPolicy"
  role       = "AWSServiceRoleForOrganizations"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForSupport_AWSSupportServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"
  role       = "AWSServiceRoleForSupport"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForTrustedAdvisor_AWSTrustedAdvisorServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"
  role       = "AWSServiceRoleForTrustedAdvisor"
}

resource "aws_iam_role_policy_attachment" "tfer--Amazon_EventBridge_Invoke_Step_Functions_1380056641_Amazon_EventBridge_Invoke_Step_Functions_1380056641" {
  policy_arn = "arn:aws:iam::582242502570:policy/service-role/Amazon_EventBridge_Invoke_Step_Functions_1380056641"
  role       = "Amazon_EventBridge_Invoke_Step_Functions_1380056641"
}

resource "aws_iam_role_policy_attachment" "tfer--StepFunctions-HelloWorld-role-13892438_XRayAccessPolicy-3b39a036-2309-4296-9711-43a4aed54c2a" {
  policy_arn = "arn:aws:iam::582242502570:policy/service-role/XRayAccessPolicy-3b39a036-2309-4296-9711-43a4aed54c2a"
  role       = "StepFunctions-HelloWorld-role-13892438"
}

resource "aws_iam_role_policy_attachment" "tfer--StepFunctions-MyStateMachine-role-24657fce_AWSLambdaExecute" {
  policy_arn = "arn:aws:iam::aws:policy/AWSLambdaExecute"
  role       = "StepFunctions-MyStateMachine-role-24657fce"
}

resource "aws_iam_role_policy_attachment" "tfer--StepFunctions-MyStateMachine-role-24657fce_AWSLambdaRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaRole"
  role       = "StepFunctions-MyStateMachine-role-24657fce"
}

resource "aws_iam_role_policy_attachment" "tfer--StepFunctions-MyStateMachine-role-24657fce_LambdaInvokeScopedAccessPolicy-1c8524e8-bc81-464c-9cf8-fa83eab61392" {
  policy_arn = "arn:aws:iam::582242502570:policy/service-role/LambdaInvokeScopedAccessPolicy-1c8524e8-bc81-464c-9cf8-fa83eab61392"
  role       = "StepFunctions-MyStateMachine-role-24657fce"
}

resource "aws_iam_role_policy_attachment" "tfer--StepFunctions-MyStateMachine-role-24657fce_LambdaInvokeScopedAccessPolicy-87ba114e-1cec-49bc-aeac-c0cf508ce8af" {
  policy_arn = "arn:aws:iam::582242502570:policy/service-role/LambdaInvokeScopedAccessPolicy-87ba114e-1cec-49bc-aeac-c0cf508ce8af"
  role       = "StepFunctions-MyStateMachine-role-24657fce"
}

resource "aws_iam_role_policy_attachment" "tfer--StepFunctions-MyStateMachine-role-24657fce_XRayAccessPolicy-16a781f7-902a-4432-85b7-86b498c90854" {
  policy_arn = "arn:aws:iam::582242502570:policy/service-role/XRayAccessPolicy-16a781f7-902a-4432-85b7-86b498c90854"
  role       = "StepFunctions-MyStateMachine-role-24657fce"
}

resource "aws_iam_role_policy_attachment" "tfer--StepFunctions-UpdateAccountInDB-role-b2d942e9_AWSLambda_FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSLambda_FullAccess"
  role       = "StepFunctions-UpdateAccountInDB-role-b2d942e9"
}

resource "aws_iam_role_policy_attachment" "tfer--StepFunctions-UpdateAccountInDB-role-b2d942e9_LambdaInvokeScopedAccessPolicy-3a28ace4-70b7-49f7-8828-a47554c8bc09" {
  policy_arn = "arn:aws:iam::582242502570:policy/service-role/LambdaInvokeScopedAccessPolicy-3a28ace4-70b7-49f7-8828-a47554c8bc09"
  role       = "StepFunctions-UpdateAccountInDB-role-b2d942e9"
}

resource "aws_iam_role_policy_attachment" "tfer--StepFunctions-UpdateAccountInDB-role-b2d942e9_XRayAccessPolicy-72130e2d-0d95-4c6b-94d4-be1b8e6a40d3" {
  policy_arn = "arn:aws:iam::582242502570:policy/service-role/XRayAccessPolicy-72130e2d-0d95-4c6b-94d4-be1b8e6a40d3"
  role       = "StepFunctions-UpdateAccountInDB-role-b2d942e9"
}

resource "aws_iam_role_policy_attachment" "tfer--lamba-update-account-amou-UpdateAccountAmountFunct-ADPUD24S3866_AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "lamba-update-account-amou-UpdateAccountAmountFunct-ADPUD24S3866"
}

resource "aws_iam_role_policy_attachment" "tfer--lambda-db-to-step-DBToStepFunctionRole-1BCLCZ64N3QUM_AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "lambda-db-to-step-DBToStepFunctionRole-1BCLCZ64N3QUM"
}

resource "aws_iam_role_policy_attachment" "tfer--lambda-db-to-step-DBToStepFunctionRole-1BCLCZ64N3QUM_AWSStepFunctionsFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSStepFunctionsFullAccess"
  role       = "lambda-db-to-step-DBToStepFunctionRole-1BCLCZ64N3QUM"
}

resource "aws_iam_role_policy_attachment" "tfer--lambda-db-to-step-DBToStepFunctionRole-1BCLCZ64N3QUM_AmazonDynamoDBFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
  role       = "lambda-db-to-step-DBToStepFunctionRole-1BCLCZ64N3QUM"
}

resource "aws_iam_role_policy_attachment" "tfer--lambda-read-file-ReadFileFunctionRole-EFXGQOBHB5RH_AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "lambda-read-file-ReadFileFunctionRole-EFXGQOBHB5RH"
}

resource "aws_iam_role_policy_attachment" "tfer--lambda-read-file-ReadFileFunctionRole-EFXGQOBHB5RH_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "lambda-read-file-ReadFileFunctionRole-EFXGQOBHB5RH"
}

resource "aws_iam_role_policy_attachment" "tfer--lambda-read-file-ReadFileFunctionRole-EFXGQOBHB5RH_AmazonS3OutpostsFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3OutpostsFullAccess"
  role       = "lambda-read-file-ReadFileFunctionRole-EFXGQOBHB5RH"
}

resource "aws_iam_role_policy_attachment" "tfer--lambda-read-form-db-2-ReadFromDBFunctionRole-1XS7OJVO64UC7_AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "lambda-read-form-db-2-ReadFromDBFunctionRole-1XS7OJVO64UC7"
}

resource "aws_iam_role_policy_attachment" "tfer--lambda-read-form-db-2-ReadFromDBFunctionRole-1XS7OJVO64UC7_AmazonDynamoDBFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
  role       = "lambda-read-form-db-2-ReadFromDBFunctionRole-1XS7OJVO64UC7"
}

resource "aws_iam_role_policy_attachment" "tfer--lambda-store-to-db-StoreToDBFunctionRole-1Q27HWRJ6H37R_AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "lambda-store-to-db-StoreToDBFunctionRole-1Q27HWRJ6H37R"
}

resource "aws_iam_role_policy_attachment" "tfer--lambda-store-to-db-StoreToDBFunctionRole-1Q27HWRJ6H37R_AmazonDynamoDBFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
  role       = "lambda-store-to-db-StoreToDBFunctionRole-1Q27HWRJ6H37R"
}

resource "aws_iam_role_policy_attachment" "tfer--readfile-ReadFileFunctionRole-174X0W1E7BSON_AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "readfile-ReadFileFunctionRole-174X0W1E7BSON"
}

resource "aws_iam_role_policy_attachment" "tfer--readfile-ReadFileFunctionRole-174X0W1E7BSON_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "readfile-ReadFileFunctionRole-174X0W1E7BSON"
}

resource "aws_iam_role_policy_attachment" "tfer--readfile-ReadFileFunctionRole-174X0W1E7BSON_AmazonS3OutpostsFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3OutpostsFullAccess"
  role       = "readfile-ReadFileFunctionRole-174X0W1E7BSON"
}
