
terraform {
  
backend "s3" {
    bucket = "body-425"
    key    = "backend/dev/jay/terraformstate"
    region = "eu-west-2"
  }

}