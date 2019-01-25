provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_instance" "test_instance" {
  instance_type = "t2.micro"

  # Lookup the correct AMI based on the region we specified
  ami = "${lookup(var.aws_linux_amis, var.aws_region)}"

  #Instance tags
  tags {
    Name = "${var.vm_name}"
  }
}

variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "eu-central-1"
}

variable "aws_linux_amis" {
  default = {
    "eu-central-1" = "ami-bf2ba8d0"
    "eu-west-1" = "ami-1a962263"
  }
}

variable "vm_name" {
  description = "Name for VM to be created"
}

output "private_ip_address" {
  value = "${aws_instance.test_instance.private_ip}"
}