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
