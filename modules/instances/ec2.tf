resource "aws_instance" "ec2-jenkins" {
  ami = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id = var.public_subnets.id
  vpc_security_group_ids = [aws_security_group.public_sg.id]
  key_name = aws_key_pair.key_access.key_name
  user_data = "${file("${path.module}/src/start.sh")}"
  associate_public_ip_address = true

  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name = "EC2 - Jenkins"
  }

}





