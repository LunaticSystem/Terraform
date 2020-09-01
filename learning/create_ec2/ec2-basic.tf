terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws" #AWS provider
    }
  }
}

provider "aws" {
  profile = "brendan/terraform" # AWS Credentials Profile
  region  = "us-west-2"         # AWS Region
}

# Defines a piece of infrastructure. i.e ec2.
resource "aws_instance" "ec2-basic" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
}