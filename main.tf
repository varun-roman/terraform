terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

resource "aws_instance" "my-machine" {
   count = 2   # Here we are creating identical 2 machines.
   ami = var.ami
   instance_type = var.instance_type
   tags = {
      Name = "my-machine-${count.index}"
           }
}
