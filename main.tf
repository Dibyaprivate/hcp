provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-080b1a55a0ad28c02"
instance_type = "t2.micro"
key_name = "virginya"
vpc_security_group_ids = ["sg-0ae6bccc6af2835c0"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "tomcat-1", "tomcat-2", "Monitoring server","nexus"]
}

