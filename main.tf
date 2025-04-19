provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "one" {
  count         = 1
  ami           = "ami-0e449927258d45bc4"
  instance_type = "t2.micro"
  
  tags = {
    Name = "DemoInstance"
  }
}

