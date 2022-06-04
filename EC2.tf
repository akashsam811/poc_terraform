provider "aws" {
  access_key = "AKIAVW3Z6FISKQFCS4EZ"
  secret_key = "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"
  region     = "us-east-1"
}

resource "aws_instance" "examble" {
  ami           = "ami-2757f631"
instance_type = "t2.micro"
}
