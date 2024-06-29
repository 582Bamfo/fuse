terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.55.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}





resource "aws_iam_user" "test" {
  name = "akua"

}

