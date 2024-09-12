resource "aws_instance" "my_instance" {
  count             = 10
  ami               = var.ami_id
  instance_type     = var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] == "mysql" ? "t3.medium" : "t2.micro"
  security_groups   = [aws_security_group.allow_all.name]
  tags              = {
    Name = var.instance_names[count.index]
  }
}

resource "aws_route53_record" "record" {
  count = 10
  zone_id = var.zone_id
  name    = "${var.instance_names[count.index]}.${var.domain}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.my_instance[count.index].private_ip]
}

resource "aws_key_pair" "deployer" {
  key_name   = "work-key"
  public_key = file("${path.module}/workkey.pub")
}

resource "aws_instance" "file_function" {
  ami               = var.ami_id
  instance_type     = "t2.micro"
  key_name = aws_key_pair.deployer.key_name
}