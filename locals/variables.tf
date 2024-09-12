# variable "ami_id" {
#     type = string
#     default = "ami-0b4f379183e5706b9" 
# }

# variable "instance_names" {
#     type = list
#     default = ["mongodb","catalogue","cart","web","user","rabbitmq","mysql","payment","redis","shipping"]
# }

variable "region" {
    type = string
    default = "us-east-1"
}

# variable "sg_name" {
#     type = string
#     default = "allow-all" 
# }

# variable "description" {
#     type = string
#     default = "allowing all traffic"
# }

# variable "sg_cidr" {
#     type = list 
#     default = ["0.0.0.0/0"]
# }

# variable "zone_id" {
#   type = string
#   default = "Z03542562GV6UQYCXD7DV"
# }

# variable "domain" {
#   type = string
#   default = "vignanlabs.online"
#   }

variable "isProd" {
  default = false
}