terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws" #AWS provider
    }
  }
}

provider "aws" {
  profile = "brendan/terraform" # AWS Credentials Profile
  region  = var.region         # AWS Region from region variable in variables.tf
}

# Defines a piece of infrastructure. i.e ec2.
resource "aws_instance" "ec2-basic-variables" {
  ami           = var.amis[var.region]
  instance_type = "t2.micro"

  # Execute commands locally during provisioning.
  provisioner "local-exec" {
    command = "echo ${aws_instance.ec2-basic.public_ip} > ip_address.txt" # Echo's aws ip to ip_address.txt file
  }
}