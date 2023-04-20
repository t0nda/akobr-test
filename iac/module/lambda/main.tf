resource "aws_iam_role" "res_lambda_role" {
  name = "lambda_role"

  assume_role_policy = jsonencode({
    Version   = "2012-10-17"
    Statement = [
      {
        Action    = "sts:AssumeRole"
        Effect    = "Allow"
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lambda_basic_execution" {
  policy_arn = aws_iam_policy.res_lambda_policy.arn
  role       = aws_iam_role.res_lambda_role.name
}

resource "aws_iam_policy" "res_lambda_policy" {
  name        = "lambda_policy"
  path        = "/"
  description = "Policy for accessing DynamoDB and Step Functions from Lambda"

  policy = jsonencode({
    Version   = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "dynamodb:GetItem",
          "dynamodb:PutItem",
          "dynamodb:UpdateItem",
          "dynamodb:DeleteItem",
          "dynamodb:Query",
          "dynamodb:Scan",
          "dynamodb:DescribeStream",
          "dynamodb:ListStreams",
          "dynamodb:GetRecords",
          "dynamodb:GetShardIterator",
        ]
        Resource = "*"
      },
      {
        Effect = "Allow"
        Action = [
          "states:StartExecution",
          "states:StopExecution",
          "states:DescribeExecution",
          "states:GetExecutionHistory"
        ]
        Resource = "*"
      },
      {
        Effect = "Allow"
        Action = [
          "s3:GetObject",
          "s3:PutObject",
          "s3:DeleteObject"
        ]
        Resource = "*"
      },
      {
        Effect = "Allow"
        Action = [
          "logs:CreateLogGroup",
          "logs:CreateLogStream",
          "logs:PutLogEvents"
        ]
        Resource = "arn:aws:logs:*:*:*"
      }
    ]
  })
}

resource "aws_lambda_function" "lambda-read-file" {
  architectures = ["x86_64"]

  environment {
    variables = {
      NODE_OPTIONS = " --enable-source-maps"
    }
  }

  function_name                  = "lambda-read-file"
  handler                        = "app.lambdaHandler"
  memory_size                    = "512"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = aws_iam_role.res_lambda_role.arn
  runtime                        = "nodejs18.x"
  filename                       = "../../lambda-read-file/read-file/dist/app.zip"
  source_code_hash               = "../../lambda-read-file/read-file/dist/app.zip"

  timeout = "5"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "lambda-db-to-step" {
  architectures = ["x86_64"]

  environment {
    variables = {
      NODE_OPTIONS = " --enable-source-maps"
      STEP_FUNC_ARN = aws_sfn_state_machine.step_function_update_amount.arn
    }
  }

  function_name                  = "lambda-db-to-step"
  handler                        = "app.lambdaDBToStepHandler"
  memory_size                    = "512"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = aws_iam_role.res_lambda_role.arn
  runtime                        = "nodejs18.x"
  filename                       = "../../lambda-db-to-step/db-to-step/dist/app.zip"
  source_code_hash               = "../../lambda-db-to-step/db-to-step/dist/app.zip"

  timeout = "5"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "lambda-store-to-db" {
  architectures = ["x86_64"]

  environment {
    variables = {
      NODE_OPTIONS = " --enable-source-maps"
    }
  }

  function_name                  = "lambda-store-to-db"
  handler                        = "app.lambdaStoreToDBHandler"
  memory_size                    = "512"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = aws_iam_role.res_lambda_role.arn
  runtime                        = "nodejs18.x"
  filename                       = "../../lambda-store-to-db/store-to-db/dist/app.zip"
  source_code_hash               = "../../lambda-store-to-db/store-to-db/dist/app.zip"

  timeout = "5"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "lambda-update-account-amount" {
  architectures = ["x86_64"]

  environment {
    variables = {
      NODE_OPTIONS = " --enable-source-maps"
      MUL = "1.2"
    }
  }

  function_name                  = "lambda-update-account-amount"
  handler                        = "app.lambdaUpdateAccountAmountHandler"
  memory_size                    = "512"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = aws_iam_role.res_lambda_role.arn
  runtime                        = "nodejs18.x"
  filename                       = "../../lambda-update-account-amount/update-account-amount/dist/app.zip"
  source_code_hash               = "../../lambda-update-account-amount/update-account-amount/dist/app.zip"

  timeout = "5"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_iam_role" "step_function_update_amount_role" {
  name = "step_function_update_amount_role"

  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Action" : "sts:AssumeRole",
        "Effect" : "Allow",
        "Principal" : {
          "Service" : "states.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_sfn_state_machine" "step_function_update_amount" {
  name       = "state_machine_update_amount"
  role_arn   = aws_iam_role.step_function_update_amount_role.arn
  definition = jsonencode({
    "StartAt" : "UpdateAccountAmountLambda",
    "States" : {
      UpdateAccountAmountLambda = {
        Type     = "Task",
        Resource = aws_lambda_function.lambda-update-account-amount.arn,
        Next     = "StoreToDBLambda"
      },
      StoreToDBLambda = {
        Type     = "Task",
        Resource = aws_lambda_function.lambda-store-to-db.arn,
        End      = true
      }
    }
  })
}
