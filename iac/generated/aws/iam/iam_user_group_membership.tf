resource "aws_iam_user_group_membership" "tfer--akobr-002F-Admin" {
  groups = ["Admin"]
  user   = "akobr"
}
