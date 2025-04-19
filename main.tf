provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-0e449927258d45bc4"
instance_type = "t2.medium"
key_name = "virginya"
vpc_security_group_ids = ["sg-0ae6bccc6af2835c0"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "tomcat-1", "tomcat-2", "Monitoring server"]
}

