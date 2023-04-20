resource "aws_lambda_function" "tfer--lamba-update-account-amou-UpdateAccountAmountFunct-Y8brQpx7wW2i" {
  architectures = ["x86_64"]

  environment {
    variables = {
      MUL          = "1.2"
      NODE_OPTIONS = " --enable-source-maps"
    }
  }

  function_name                  = "lamba-update-account-amou-UpdateAccountAmountFunct-Y8brQpx7wW2i"
  handler                        = "app.lambdaUpdateAccountAmountHandler"
  memory_size                    = "512"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::582242502570:role/lamba-update-account-amou-UpdateAccountAmountFunct-ADPUD24S3866"
  runtime                        = "nodejs18.x"
  source_code_hash               = "WlQFgln/bDAynlOf84aJdfr9mKJkTodG1RW1eGT/drY="

  tags = {
    "lambda:createdBy" = "SAM"
  }

  tags_all = {
    "lambda:createdBy" = "SAM"
  }

  timeout = "5"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--lambda-db-to-step-DBToStepFunction-e0BR4hYpp6sd" {
  architectures = ["x86_64"]

  environment {
    variables = {
      NODE_OPTIONS  = " --enable-source-maps"
      STEP_FUNC_ARN = "arn:aws:states:eu-central-1:582242502570:stateMachine:UpdateAccountInDB"
    }
  }

  function_name                  = "lambda-db-to-step-DBToStepFunction-e0BR4hYpp6sd"
  handler                        = "app.lambdaDBToStepHandler"
  memory_size                    = "512"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::582242502570:role/lambda-db-to-step-DBToStepFunctionRole-1BCLCZ64N3QUM"
  runtime                        = "nodejs18.x"
  source_code_hash               = "T05mSWzZ04NV7hKXYRDn+cyoo0J8C9i6UljKNkyqAzc="

  tags = {
    "lambda:createdBy" = "SAM"
  }

  tags_all = {
    "lambda:createdBy" = "SAM"
  }

  timeout = "5"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--lambda-read-file-ReadFileFunction-AfLOK28n7evd" {
  architectures = ["x86_64"]

  environment {
    variables = {
      NODE_OPTIONS = " --enable-source-maps"
    }
  }

  function_name                  = "lambda-read-file-ReadFileFunction-AfLOK28n7evd"
  handler                        = "app.lambdaHandler"
  memory_size                    = "512"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::582242502570:role/lambda-read-file-ReadFileFunctionRole-EFXGQOBHB5RH"
  runtime                        = "nodejs18.x"
  source_code_hash               = "F16p7NLobpC3K6T689+9qJlifmp7QqiQPvmktcFNR+Y="

  tags = {
    "lambda:createdBy" = "SAM"
  }

  tags_all = {
    "lambda:createdBy" = "SAM"
  }

  timeout = "5"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--lambda-read-form-db-2-ReadFromDBFunction-jdRUYiThNzK2" {
  architectures = ["x86_64"]

  environment {
    variables = {
      NODE_OPTIONS = " --enable-source-maps"
    }
  }

  function_name                  = "lambda-read-form-db-2-ReadFromDBFunction-jdRUYiThNzK2"
  handler                        = "app.lambdaReadFromDBHandler"
  memory_size                    = "512"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::582242502570:role/lambda-read-form-db-2-ReadFromDBFunctionRole-1XS7OJVO64UC7"
  runtime                        = "nodejs18.x"
  source_code_hash               = "8X+e0HkQbLedwLeLO3MYyfTp5XGoRbiOWf+6iXLsWZM="

  tags = {
    "lambda:createdBy" = "SAM"
  }

  tags_all = {
    "lambda:createdBy" = "SAM"
  }

  timeout = "5"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--lambda-store-to-db-StoreToDBFunction-1EUZlTCN3d5B" {
  architectures = ["x86_64"]

  environment {
    variables = {
      NODE_OPTIONS = " --enable-source-maps"
    }
  }

  function_name                  = "lambda-store-to-db-StoreToDBFunction-1EUZlTCN3d5B"
  handler                        = "app.lambdaStoreToDBHandler"
  memory_size                    = "512"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::582242502570:role/lambda-store-to-db-StoreToDBFunctionRole-1Q27HWRJ6H37R"
  runtime                        = "nodejs18.x"
  source_code_hash               = "tPHcpovYzTcOHbd0uEUAdW09/fHIXjI0om7aGRXs6rg="

  tags = {
    "lambda:createdBy" = "SAM"
  }

  tags_all = {
    "lambda:createdBy" = "SAM"
  }

  timeout = "5"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--read_file_function" {
  architectures                  = ["x86_64"]
  function_name                  = "read_file_function"
  handler                        = "app.lambdaHandler"
  memory_size                    = "128"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::582242502570:role/lambda_role"
  runtime                        = "nodejs18.x"
  source_code_hash               = "CVSSIOAYbj9w8FtCy+ZsoSGaOoIoV076kWpXSLCyn+c="

  tags = {
    Terraform = "true"
  }

  tags_all = {
    Terraform = "true"
  }

  timeout = "3"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--readfile-ReadFileFunction-CH00rlFFqtsZ" {
  architectures = ["x86_64"]

  environment {
    variables = {
      NODE_OPTIONS = " --enable-source-maps"
    }
  }

  function_name                  = "readfile-ReadFileFunction-CH00rlFFqtsZ"
  handler                        = "app.lambdaHandler"
  memory_size                    = "128"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::582242502570:role/readfile-ReadFileFunctionRole-174X0W1E7BSON"
  runtime                        = "nodejs18.x"
  source_code_hash               = "PVGcZMZ1KapRNBv7Kx2E9ZaDPFDAPl5ziyhFnhmdR3E="

  tags = {
    "lambda:createdBy" = "SAM"
  }

  tags_all = {
    "lambda:createdBy" = "SAM"
  }

  timeout = "3"

  tracing_config {
    mode = "PassThrough"
  }
}
