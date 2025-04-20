provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-080b1a55a0ad28c02"
instance_type = "t2.micro"
key_name = "Dibya"
vpc_security_group_ids = ["sg-03f18dabb38ca5e1e"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "tomcat-1", "tomcat-2", "Monitoring server","nexus"]
}

