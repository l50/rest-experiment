provider "aws" {
  region = "us-west-1"
}

resource "aws_security_group" "instance" {
  name = "rest-experiment"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "rest-experiment" {
  ami        = "ami-8d948ced"
  instance_type   = "t2.micro"
  key_name        = "<PUT YOUR KEY NAME HERE>"
  security_groups = ["${aws_security_group.instance.name}"]
  user_data       = "${file("setup.sh")}"

  tags {
    Name = "rest-experiment"
  }
}
