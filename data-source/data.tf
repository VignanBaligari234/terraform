data "aws_ami" "ami" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*.0-x86_64-gp2"]
  }
}

output "ami_id" {
  value = data.aws_ami.ami.id
}

data "aws_vpc" "default" {
  default = true
}

output "vpc_info" {
  value = data.aws_vpc.default
}

resource "aws_security_group" "allow-http" {
  
  name        = "allow-http"
  description = "allowing port no 80"
  vpc_id = data.aws_vpc.default.id
  ingress {
    description      = "allowing all inbound traffic"
    from_port        = 80
    to_port          = 80
    protocol         = "http"
    cidr_blocks      = ["0.0.0.0/0"]
    }
  egress {
    description      = "allwoing all outbound traffic"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    }
  tags = {
    Name = "allow_tls"
  }
}

