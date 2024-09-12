resource "aws_instance" "my_instance" {
  count             = 10
  ami               = var.ami_id
  instance_type     = var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] == "mysql" ? "t3.medium" : "t2.micro"
  security_groups   = [aws_security_group.allow_all.name]
  tags              = var.instance_names[count.index]
}