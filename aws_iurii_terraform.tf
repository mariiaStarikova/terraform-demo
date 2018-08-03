provider "aws" {
  region = "eu-central-1"
}
  
resource "aws_instance" "test_VM" {
  # CentOS Linux 6 x86_64 HVM EBS 1703_02
  ami           = "ami-11a2707e"  
  instance_type = "t2.nano"

  tags {
    Name = "${var.vm_name}"
  }
}

variable "vm_name" {
  description = "Name for VM to be created"
}