module "user" {
  source = "./iam"
  user_name = var.user_name
  policy_name = "policyname1"
}

module "server" {
  source = "./ec2"
}


module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "4.1.1"
}

module "myvpc" {
  source = "github.com/terraform-aws-modules/terraform-aws-vpc"
  name = "stage"
}