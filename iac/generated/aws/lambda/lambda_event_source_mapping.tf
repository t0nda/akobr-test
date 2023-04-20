resource "aws_lambda_event_source_mapping" "tfer--1fa5d341-7022-48fe-b075-5b4c14bfdaaf" {
  batch_size                         = "1"
  bisect_batch_on_function_error     = "false"
  enabled                            = "true"
  event_source_arn                   = "arn:aws:dynamodb:eu-central-1:582242502570:table/akobr-test-account/stream/2023-04-16T16:22:46.862"
  function_name                      = "arn:aws:lambda:eu-central-1:582242502570:function:lambda-db-to-step-DBToStepFunction-e0BR4hYpp6sd"
  maximum_batching_window_in_seconds = "0"
  maximum_record_age_in_seconds      = "-1"
  maximum_retry_attempts             = "-1"
  parallelization_factor             = "1"
  starting_position                  = "LATEST"
  tumbling_window_in_seconds         = "0"
}
