resource "aws_iam_user_policy_attachment" "tfer--akobr_AWSCloudTrail_FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSCloudTrail_FullAccess"
  user       = "akobr"
}

resource "aws_iam_user_policy_attachment" "tfer--akobr_AWSCodeDeployRoleForLambda" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSCodeDeployRoleForLambda"
  user       = "akobr"
}

resource "aws_iam_user_policy_attachment" "tfer--akobr_AWSLambdaExecute" {
  policy_arn = "arn:aws:iam::aws:policy/AWSLambdaExecute"
  user       = "akobr"
}

resource "aws_iam_user_policy_attachment" "tfer--akobr_AWSLambdaInvocation-DynamoDB" {
  policy_arn = "arn:aws:iam::aws:policy/AWSLambdaInvocation-DynamoDB"
  user       = "akobr"
}

resource "aws_iam_user_policy_attachment" "tfer--akobr_AWSLambdaRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaRole"
  user       = "akobr"
}

resource "aws_iam_user_policy_attachment" "tfer--akobr_AWSLambda_FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSLambda_FullAccess"
  user       = "akobr"
}

resource "aws_iam_user_policy_attachment" "tfer--akobr_AmazonEventBridgeFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEventBridgeFullAccess"
  user       = "akobr"
}

resource "aws_iam_user_policy_attachment" "tfer--akobr_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  user       = "akobr"
}

resource "aws_iam_user_policy_attachment" "tfer--akobr_AmazonS3ObjectLambdaExecutionRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonS3ObjectLambdaExecutionRolePolicy"
  user       = "akobr"
}

resource "aws_iam_user_policy_attachment" "tfer--akobr_AmazonS3OutpostsFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3OutpostsFullAccess"
  user       = "akobr"
}
