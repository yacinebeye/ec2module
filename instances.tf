resource "aws_instance" "public_env" {
  ami                    = data.aws_ami.aws_basic_linux.id
  instance_type          = var.ec2_type
  subnet_id              = data.aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.my_public_env.id]
  key_name               = var.my_keypair

  tags = {
      Name: "public_env"
  }
}

#count = var.number_of_instances

resource "aws_instance" "private_env" {
  ami                    = data.aws_ami.aws_basic_linux.id
  instance_type          = var.ec2_type
  subnet_id              = data.aws_subnet.private.id
  vpc_security_group_ids = [aws_security_group.my_private_env.id]
  key_name               = var.my_keypair

  tags = {
      Name = "private_env"
  }
}