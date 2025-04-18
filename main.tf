provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "one" {
  count         = 1
  ami           = "ami-0f1dcc636b69a6438"
  instance_type = "t2.micro"
  
  tags = {
    Name = "DemoInstance"
  }
}

