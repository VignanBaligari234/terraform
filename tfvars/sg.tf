resource "aws_security_group" "allow_all" {
  name        = var.sg_name
  description = var.description

  ingress {
    description      = "allowing all inbound traffic"
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.sg_cidr
    }
  egress {
    description      = "allwoing all outbound traffic"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.sg_cidr
    }
  tags = {
    Name = "allow_tls"
  }
}
