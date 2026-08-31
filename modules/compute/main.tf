resource "aws_security_group" "app" {
  name        = var.security_group_name
  description = "Security group for application EC2"
  vpc_id      = var.vpc_id

  dynamic "ingress" {
    for_each = var.allowed_ingress_ports

    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = [var.allowed_ingress_cidr]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "app" {
  count = var.instance_count

  ami           = var.ami_id
  instance_type = var.instance_type

  subnet_id              = var.subnet_ids[count.index]
  vpc_security_group_ids = [aws_security_group.app.id]

  tags = {
    Name        = "terraform-ec2-${var.environment}-${count.index + 1}"
    Environment = var.environment
  }
}