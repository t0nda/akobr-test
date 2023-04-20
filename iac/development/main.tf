terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "lambda" {
  source = "../module/lambda"
}

module "my_sfn" {
  source                 = "../module/sfn"
  lambda_read_file_arn   = module.lambda.lambda_read_file.arn
  lambda_store_to_db_arn = module.lambda.lambda_store_to_db.arn
  lambda_update_account_amount_arn = module.lambda.lambda_update_account_amount.arn

  depends_on = [module.lambda]
}


module "s3" {
  source                      = "../module/s3"
  step_function_read_file_arn = module.my_sfn.step_function_read_file.arn
}

module "dynamodb" {
  source                = "../module/dynamodb"
  lambda_db_to_step_arn = module.lambda.lambda_db_to_step.arn

  depends_on = [module.lambda]
}