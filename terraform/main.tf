resource "aws_instance" "key-1" {
ami = "ami-076c6dbba59aa92e6"
instance_type = "t2.micro"
availability_zone = "ap-south-1a"
key_name = "mynewkey"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "client_server"
Environment = "DEV"
}
}


