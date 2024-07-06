terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "<=5.40.0"
    }
  }
  backend "s3" {
    bucket = "body-425"
    key    = "backend/dev/jay/terraformstate"
    region = "eu-west-2"
  }
}



provider "aws" {
  region = var.region
}

provider "aws" {
  alias  = "new"
  region = var.region1
}


resource "aws_iam_user" "test" {
  name = var.user_name

}

data "aws_iam_policy_document" "fuse" {
  statement {
    sid = "AkuaPolicy"

    actions = [
      "s3:ListAllMyBuckets",
      "s3:GetBucketLocation",
      "s3:DescribeJob",
    ]

    resources = [
      "arn:aws:s3:::talktalk-1981/*",
    ]
  }


}

resource "aws_iam_policy" "policy1" {
  name   = var.policy_name
  path   = "/"
  policy = data.aws_iam_policy_document.fuse.json
}




resource "aws_iam_user_policy_attachment" "test-attach" {
  user       = aws_iam_user.test.name
  policy_arn = aws_iam_policy.policy1.arn
}


resource "aws_iam_user_policy_attachment" "test-attach2" {
  user       = aws_iam_user.test.name
  policy_arn = var.policy_arn
}


resource "aws_instance" "this" {
  ami           = var.ami_this
  instance_type = var.instance_type_this

  tags = {
    Name = var.tagName
  }
}


resource "aws_instance" "that" {
  ami           = var.ami_that
  provider = aws.new
  instance_type = var.instance_type_that

  tags = {
    Name = var.tagName1
  }
}

output "ec2ip" {
  value = aws_instance.this.public_ip
}

output "akuaid" {
  value = aws_iam_user.test.id
}
