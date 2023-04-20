resource "aws_iam_policy" "state_machine_policy" {
  name   = "state_machine_policy"
  policy = jsonencode({
    Version   = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "lambda:InvokeFunction"
        ]
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "state_machine_attachment" {
  policy_arn = aws_iam_policy.state_machine_policy.arn
  role       = aws_iam_role.step_function_role.name
}

resource "aws_iam_role" "step_function_role" {
  name = "step_function_role"

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

resource "aws_sfn_state_machine" "step_function_read_file" {
  name       = "state_machine_read_file"
  role_arn   = aws_iam_role.step_function_role.arn
  definition = jsonencode({
    "StartAt" : "ReadFileLambda",
    "States" : {
      ReadFileLambda = {
        Type     = "Task",
        Resource = var.lambda_read_file_arn,
        Next     = "StoreToDBLambda"
      },
      StoreToDBLambda = {
        Type     = "Task",
        Resource = var.lambda_store_to_db_arn,
        End      = true
      }
    }
  })
}

resource "aws_sfn_state_machine" "step_function_update_amount" {
  name       = "state_machine_update_amount"
  role_arn   = aws_iam_role.step_function_role.arn
  definition = jsonencode({
    "StartAt" : "UpdateAccountAmountLambda",
    "States" : {
      UpdateAccountAmountLambda = {
        Type     = "Task",
        Resource = var.lambda_update_account_amount_arn,
        Next     = "StoreToDBLambda"
      },
      StoreToDBLambda = {
        Type     = "Task",
        Resource = var.lambda_store_to_db_arn,
        End      = true
      }
    }
  })
}