provider "aws" {
  region = "eu-central-1"
}
  
resource "aws_instance" "test_VM1" {
  # Amazon Linux AMI 2017.03.1 (HVM)
  ami           = "ami-657bd20a"
  instance_type = "t2.micro"

  tags {
    Name = "${var.vm_name1}"
  }
}

resource "aws_instance" "test_VM2" {
  # Amazon Linux AMI 2017.03.1 (HVM)
  ami           = "ami-657bd20a"
  instance_type = "t2.micro"

  tags {
    Name = "${var.vm_name2}"
  }
}
resource "aws_instance" "test_VM3" {
  # Amazon Linux AMI 2017.03.1 (HVM)
  ami           = "ami-657bd20a"
  instance_type = "t2.micro"

  tags {
    Name = "${var.vm_name3}"
  }
}

variable "vm_name1" {
  default = "m3test"
  description = "Name for VM to be created"
}

variable "vm_name2" {
  default = "m3test"
  description = "Name for VM to be created"
}  

variable "vm_name3" {
  default = "m3test"
  description = "Name for VM to be created"
}