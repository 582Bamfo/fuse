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