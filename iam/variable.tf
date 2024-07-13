variable "region" {
    default = "eu-west-2"
    type = string
    description = "this is default region"

  
}

variable "region1" {
    default = "us-west-2"
    type = string
    description = "this is default region1"

  
}

variable "user_name" {
    default = "akua"
  type = string
  description = "iam user name"
}

variable "policy_name" {
  default = "akuapolicy"
  type = string
  description = "iam user policy name"
}

variable "policy_arn" {
    default = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
    type = string
  
}