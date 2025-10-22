data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

owners = ["099720109477"]

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "dev_machine" {
  ami = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
  key_name = "aws-pem-file"

  tags = {
    Environment = "dev"
    Name = "${var.name}-server"
  }
}
