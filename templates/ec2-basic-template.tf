terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws" #AWS provider
    }
  }
}

provider "aws" {
  profile = "default" # AWS Credentials Profile
  region  = "us-west-2" # AWS Region
}

resource "aws_instance" "<instance_name>" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
}