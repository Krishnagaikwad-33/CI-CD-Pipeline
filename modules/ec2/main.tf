resource "aws_instance" "web" {
  #ami           = "ami-0af9569868786b23a"  # Amazon Linux 2 AMI
  ami = "ami-03400c3b73b5086e9"
  instance_type = "t2.micro"
  subnet_id     = element(var.subnet_ids, 0)
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  tags = {
    Name = "Terraform-EC2"
  }
}

resource "aws_security_group" "ec2_sg" {
  name        = "ec2-sg"
  description = "Allow SSH"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
