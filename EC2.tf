resource "aws_instance" "server1" {
  instance_type          = "t2.micro"
  user_data              = file("setup.sh")
  vpc_security_group_ids = [aws_security_group.sg1.id]
  subnet_id              = aws_subnet.private1.id
  availability_zone      = "us-east-1a"
  ami                    = "ami-043a5a82b6cf98947"
  tags = {
    name = "web1"
  }
}
resource "aws_instance" "server2" {
  instance_type          = "t2.micro"
  user_data              = file("setup.sh")
  vpc_security_group_ids = [aws_security_group.sg1.id]
  subnet_id              = aws_subnet.private2.id
  availability_zone      = "us-east-1b"
  ami                    = "ami-043a5a82b6cf98947"
  tags = {
    name = "web2"
  }
}
