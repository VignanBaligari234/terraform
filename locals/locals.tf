locals {
    ami_id = "ami-0b4f379183e5706b9"
    public_key = file("${path.module}/workkey.pub")
    instance_type = var.isProd ? "t3.medium" : "t2.medium"
}