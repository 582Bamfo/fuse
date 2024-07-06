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

variable "ami_this" { 
default = "ami-053a617c6207ecc7b"
type = string

}

variable "instance_type_this" {
  default = "t2.micro"
}

variable "ami_that" {
  default = "ami-0cf2b4e024cdb6960"
}

variable "instance_type_that" {
  default = "t2.micro"
}

variable "tagName" {
    default = "NanaAba"
  
}

variable "tagName1" {
    default = "Aba"
  
}

variable "policy_arn" {
    default = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
    type = string
  
}