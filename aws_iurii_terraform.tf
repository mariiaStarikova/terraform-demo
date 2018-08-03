provider "aws" {
  region = "eu-central-1"
}
  
resource "aws_instance" "test_VM" {
  # CentOS Linux 6 x86_64 HVM EBS 1703_01
  ami           = "ami-dc0287b3"  
  instance_type = "t2.micro

  tags {
    Name = "${var.vm_name}"
  }
}

variable "vm_name" {
  description = "Name for VM to be created"
}