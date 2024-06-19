data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

data "aws_subnet" "subnet" {
  vpc_id     = var.vpc_id
  cidr_block = "10.0.101.0/24" # public subnet CIDR
}

resource "aws_instance" "ubuntu" {
  depends_on = [
    aws_security_group.allow_ssh,
  ]

  subnet_id     = data.aws_subnet.subnet.id
  ami           = var.ami_id != "" ? var.ami_id : data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name      = var.key_pair

  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = var.instance_name
  }
}
