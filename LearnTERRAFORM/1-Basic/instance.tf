/*
this is multiline comment
*/

# This is single line comment

provider "aws" {
  access_key = "ACCESS_KEY_HERE"
  secret_key = "SECRET_KEY_HERE"
  region     = "us-east-2"
}

resource "aws_instance" "test1" {
  ami           = "ami-083ebc5a49573896a"
  instance_type = "t2.micro"
}

resource "aws_eip" "test1" {
instance = aws_instance.test1.id
}
