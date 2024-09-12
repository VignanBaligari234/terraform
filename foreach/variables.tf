variable "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9" 
}

variable "instances" {
    type = map
    default = {
        mongodb = "t3.medium"
        catalogue = "t2.micro"
        cart = "t2.micro"
        web = "t2.micro"
        user = "t2.micro"
        rabbitmq = "t2.micro"
        mysql = "t3.medium"
        payment = "t2.micro"
        redis = "t2.micro"
        shipping = "t2.micro"
    }
}

variable "ingress" {
    type = list
    default = [
        {   
            description      = "allowing http traffic"
            from_port        = 80
            to_port          = 80
            protocol         = "tcp"
            cidr_blocks      = ["0.0.0.0/0"]
        },
        {
            description      = "allowing https traffic"
            from_port        = 443
            to_port          = 443
            protocol         = "tcp"
            cidr_blocks      = ["0.0.0.0/0"]
        },
        {
            description      = "allowing ssh traffic"
            from_port        = 22
            to_port          = 22
            protocol         = "tcp"
            cidr_blocks      = ["0.0.0.0/0"]
        }
    ]
}

variable "zone_id" {
  type = string
  default = "Z03542562GV6UQYCXD7DV"
}

variable "domain" {
  type = string
  default = "vignanlabs.online"
  }