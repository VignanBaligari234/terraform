variable "region" {
    type = string
    default = "us-east-1"
}

variable "instance_name" {
    type = string
    default = "mongodb"
}
variable "tags" {
    type = map
    default = {
        Name = "roboshop"
        Project = "Roboshop"
        Component = "mongodb"
        Environment = "dev"
        Terrafrom = true
    }
}

variable "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9" 
}

variable "sg_name" {
    type = string
    default = "allow-all" 
}

variable "description" {
    type = string
    default = "allowing all traffic"
}

variable "sg_cidr" {
    type = list 
    default = ["0.0.0.0/0"]
}