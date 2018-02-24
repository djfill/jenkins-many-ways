provider "aws" {
  region     = "us-east-2"
}

resource "aws_instance" "jenkins" {
  ami           = "ami-048ca661"
  instance_type = "t2.micro"
  key_name      = ""
  security_groups = [""]
}

resource "aws_eip" "ip" {
  instance = "${aws_instance.jenkins.id}"
}


