provider "aws" {
  access_key = "AKIAVW3Z6FISKQFCS4EZ"
  secret_key = "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"
  alias = "east"
  region     = "us-east-1"
}
resource "aws_security_group" "poc_sec" {
  name        = "poc_sec"
  description = "security group"
ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
egress {
    from_port        = 0
    to_port          = 65535
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
tags = {
    Name = "poc_sec"
  }
}
