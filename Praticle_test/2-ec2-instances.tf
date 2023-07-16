resource "aws_instance" "test-instance" {
  ami = "ami-0310483fb2b488153"
  instance_type = "t2.micro"
  key_name = aws_key_pair.my_key.key_name
  # security_groups = [ aws_security_group.allow_tls.id ]
  vpc_security_group_ids = [ aws_security_group.allow_tls.id ]

}

resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}

resource "aws_key_pair" "my_key" {
  key_name   = var.key_name
  public_key = file("~/.ssh/id_ed25519.pub")
}