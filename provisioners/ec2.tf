resource "aws_instance" "provisioner" {
  ami               = "ami-0b4f379183e5706b9" 
  instance_type     = "t2.micro"
  
  provisioner "local-exec"{
    command = "echo ${self.private_ip} > inventory"
  }
}