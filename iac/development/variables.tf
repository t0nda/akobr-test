# Default values for the AWS provider

variable "aws_region" {
  description = "The AWS region to use for the provider"
  type        = string
  default     = "eu-central-1"
}