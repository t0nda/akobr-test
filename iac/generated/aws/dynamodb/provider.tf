provider "aws" {
  region = "eu-central-1"
}

terraform {
	required_providers {
		aws = {
	    version = "~> 3.76.1"
		}
  }
}
