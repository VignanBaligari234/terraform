variable "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9" 
}

variable "instance_names" {
    type = list
    default = ["mongodb","catalogue","cart","web","user","rabbitmq","mysql","payment","redis","shipping"]
}

