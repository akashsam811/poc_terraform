provider "aws" {
   alias = "west"
   region = "us-west-2"
}

resource "aws_vpc" "main" {
cidr_block = "190.160.0.0/16"
instance_tenancy = "default"
enable_dns_support = "true"
enable_dns_hostnames = "true"
enable_classiclink = "false"
tags =  {
    Name = "main"
    }
}
