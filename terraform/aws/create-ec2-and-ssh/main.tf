provider "aws" {
  region = "us-east-1"  # Change to your desired region
}

resource "aws_instance" "example" {
  ami           = "ami-06b09bfacae1453cb"  # Change to your desired AMI ID
  instance_type = "t3.small"  # Change to your desired instance type

  key_name      = "linux"  # Change to your key pair name
  tags = {
    Name = "my-tf-instance"
  }
  
  vpc_security_group_ids = [aws_security_group.sg-by-tf.id]

}

resource "aws_security_group" "sg-by-tf" {
  name        = "sg-by-terraform"
  description = "Allow SSH access"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}