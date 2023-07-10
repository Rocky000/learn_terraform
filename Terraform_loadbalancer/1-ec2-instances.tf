resource "aws_instance" "test-instance-1" {
  ami = "ami-0310483fb2b488153"
  instance_type = "t2.micro"
  key_name = aws_key_pair.my_key.key_name

}

resource "aws_instance" "test-instance-2" {
  ami = "ami-0310483fb2b488153"
  instance_type = "t2.micro"
  key_name = aws_key_pair.my_key.key_name

}

resource "aws_instance" "test-instance-3" {
  ami = "ami-0310483fb2b488153"
  instance_type = "t2.micro"
  key_name = aws_key_pair.my_key.key_name

}

resource "aws_security_group" "instance_security_group" {
  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = [ "0.0.0.0/0" ] # add a CIDR block here
  }
}

resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}

resource "aws_key_pair" "my_key" {
  key_name   = var.key_name
  public_key = file("~/.ssh/id_rsa.pub")
}